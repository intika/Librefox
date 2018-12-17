<#
.SYNOPSIS
	Parses two user.js files and writes to a file all of the differences found.

.DESCRIPTION
	Compare-UserJS parses Firefox configuration files rudimentarily, in search for the specific set of valid expressions used to define preference values.

	lockPref("prefname", value);
	pref("prefname", value);
	sticky_pref("prefname", value);
	user_pref("prefname", value);
	defaultPref("prefname", value);

	Those expressions can be interpreted in various valid syntactic forms, like using single quotes instead of double quotes, using space characters, line breaks, etc. Some edge cases may not be supported, however.

	Compare-UserJS can also detect a particular type of syntax error. Specifically, it performs rudimentary (crappy) type-checking on the value parameter of the aforementioned JS function calls. Whenever it seems that the value is neither a string, nor an integer, nor a boolean, Compare-UserJS will include this information in the report.

.PARAMETER filepath_A
	Path of the first file to be used in the comparison. Wildcards are allowed.

.PARAMETER filepath_B
	Path of the second file to be used in the comparison. Wildcards are allowed.

.PARAMETER outputFile
	Path of the file where the report will be dumped. Defaults to 'userJS_diff.log' (relative path).

.PARAMETER append
	Append the report to the end of the file, instead of rewriting if a file by that name exists.

.PARAMETER noCommentsA
	Skips parsing comments in file A as comments, treating everything as active.

.PARAMETER noCommentsB
	Skips parsing comments in file B as comments, treating everything as active.

.PARAMETER hideMask
	Bitmask value for hiding parts of the report selectively. Adding up the values omits different parts of the report.
	0 - hide nothing (default)
	1 - hide list of prefs with matching values and matching state (active/inactive)
	2 - hide list of prefs with different values
	4 - hide list of prefs declared in B but not in A
	8 - hide list of prefs declared in A but not in B
	16 - hide list of matching prefs active in B but inactive in A
	32 - hide list of matching prefs active in A but inactive in B
	64 - hide list of prefs that have both mismatching values and states
	128 - hide potential syntax errors
	256 - hide lists of duplicate entries

.PARAMETER inJS
	Get the report in JavaScript. It will be written to userJS_diff.js unless the -outputFile parameter is specified.

.NOTES
	Version: 1.18.4
	Update Date: 2018-11-16
	Release Date: 2018-06-30
	Author: claustromaniac
	Copyright (C) 2018. Released under the MIT license.

.EXAMPLE
	Compare-UserJS "user.js" "C:\temp\user_b.js"

	Compares user.js to user_b.js.

.EXAMPLE
	Compare-UserJS -outputfile "myfile.txt" -append

	Writes the output to myfile.txt and appends to the end of the file if it already exists.

.EXAMPLE
	Compare-UserJS -hideMask 5

	Avoids writing to the logfile both the list of matching prefs and the list of prefs not declared in file B.

.EXAMPLE
	Compare-UserJS *.js *.txt

	Loads all JS files in the working directory as one file and compares it with all TXT files in the same directory.

#>
#Requires -Version 2

[CmdletBinding()]

PARAM (
	[Parameter(Mandatory=$true,HelpMessage='Insert the path to the first file to be compared.')]
	[ValidateNotNullOrEmpty()]
	[string]$filepath_A,

	[Parameter(Mandatory=$true,HelpMessage='Insert the path to the second file to be compared.')]
	[ValidateNotNullOrEmpty()]
	[string]$filepath_B,

	[ValidateNotNullOrEmpty()]
	[string]$outputFile = 'userJS_diff.log',
	[switch]$append = $false,
	[switch]$noCommentsA = $false,
	[switch]$noCommentsB = $false,

	[uint32]$hideMask = 0,
	[switch]$inJS = $false
)

#----------------[ Declarations ]------------------------------------------------------

$myVersion = 'v1.18.4'

# Leave all exceptions for the current scope to handle. I'm lazy like that.
$ErrorActionPreference = 'Stop'

# Get script location
$myPath = Split-Path -parent $MyInvocation.MyCommand.Definition
# Set the working directory to script location
Set-Location -path $myPath

# Newline characters to use in the logfile, based on OS (CR+LF on Windows, LF everywhere else)
if ($Env:OS) {$nl = "`r`n"} else {$nl = "`n"}

# Create root hash tables for prefs in each file.
$prefsA = @{}; $prefsB = @{}

# Extract the names of the files.
$fileNameA = (Split-Path -path $filepath_A -leaf)
$fileNameB = (Split-Path -path $filepath_B -leaf)

if ($fileNameA -ceq $fileNameB) { $fileNameA, $fileNameB = $filepath_A, $filepath_B }

# Regex for matching pref, user_pref, sticky_pref, lockPref or defaultPref.
[regex] $rx_p = 'ref(?<=\b(?:user_p|p|sticky_p|lockP|defaultP)ref)'
# Regex for detecting JS comments. Meant to be used as a suffix.
[regex] $rx_c = '(?!(?:(?:[^"\n]|(?<=[^\\]\\(?:\\\\)*)")*"|(?:[^''\n]|(?<=[^\\]\\(?:\\\\)*)'')*'')\s*\)\s*;)'
# Regex for matching prefname or value string. Must be used within groups.
[regex] $rx_s = '(?:"(?:[^"\n]|(?<=[^\\]\\(?:\\\\)*)")*")|(?:''(?:[^''\n]|(?<=[^\\]\\(?:\\\\)*)'')*'')'

if ($inJS) {
	if ($outputFile -ceq 'userJS_diff.log') { $outputFile = 'userJS_diff.js' }
	$inactive_flag = '//'
} else { $inactive_flag = '[i]' }

# switch used by the JSCom function for opening/closing multi-line JS comments
$mlc_mark = $false

#----------------[ Functions ]---------------------------------------------------------

function JSCom {
	# Return JS comment characters if inJS is set, NULL otherwise.
	param($multi = $false)

	if ($script:inJS) {
		if ($multi) {
			if ($script:mlc_mark) {'*/'} else {'/*'}
			$script:mlc_mark = !$script:mlc_mark
		} else {'//'}
	}
}

function Get-UserJSPrefs {
	# Function for deserializing the input.
	param($prefs_ht, $fileStr, [string]$inactive_flag = $script:inactive_flag)

	# Isolate and sanitize the target expressions
	$fileStr = $fileStr -creplace "(?s).*?$rx_p\s*\(\s*($rx_s)\s*,\s*([^\n]+?)\s*\)\s*;\s*|.*", "`$1`n`$2`n"

	$pn = $false
	forEach ($line in $fileStr.Split("`n")) {
		if ($pn) {
			[hashtable[]] $prefs_ht.$pn += @{
				inactive=$inactive_flag
				broken=!($line -cmatch "(?:true|false|-?[0-9]+)|$rx_s")
				value=$line
			}
			$pn = $false
		} else {
			$pn = $line -creplace '^["''](.*)["'']$', '$1'
		}
	}
}

function Read-InactivePrefs {
	# Function for filtering prefs declared in JS comments (//... or /*...*/)
	param([hashtable]$prefs_ht, [string]$fileStr, [bool]$noComments = $false)

	if ($noComments) {
		Write-Host 'Comments in this file will not be parsed as such.'
		return
	}
	# Uh... attempting to make this more readable is not worthwhile. Sorry for the inconvenience.
	$fileStr = $fileStr -creplace "(?s)(?>(?:[^/]|/(?![/*]$rx_c))*)(?:/(/[^\n]*\n|\*(?:[^*]|\*(?!/$rx_c))*(?:\*/)?))?", '$1'

	Get-UserJSPrefs $prefs_ht $fileStr
}

function Read-ActivePrefs {
	# Function for filtering active prefs
	param([hashtable]$prefs_ht, [string]$fileStr, [bool]$noComments = $false)

	if (!$noComments) {
		# Remove multi-line comments
		$fileStr = $fileStr -creplace "(?s)/\*$rx_c(?:[^*]|\*(?!/$rx_c))*(?:\*/)?", ''
		# Remove single-line comments
		$fileStr = $fileStr -creplace "//$rx_c.*", ''
	}

	Get-UserJSPrefs $prefs_ht $fileStr ''
}

function Write-Report {
	# Function for comparing the hashtables and dumping the report data
	param()

	# Report chunks
	$matching_prefs = New-Object System.Collections.Generic.Hashset[string]                   # matching values
	$differences = New-Object System.Collections.Generic.Hashset[string]                      # different values
	$missing_in_A = New-Object System.Collections.Generic.Hashset[string]                     # not declared
	$missing_in_B = New-Object System.Collections.Generic.Hashset[string]
	$inactive_in_A = New-Object System.Collections.Generic.Hashset[string]                    # matching value but mismatching state
	$inactive_in_B = New-Object System.Collections.Generic.Hashset[string]
	$fully_mismatching = New-Object System.Collections.Generic.Hashset[string]                # mismatching states and values
	$bad_syntax_A = New-Object System.Collections.ArrayList                                   # possible syntax errors
	$bad_syntax_B = New-Object System.Collections.ArrayList
	$dups_in_A = New-Object System.Collections.ArrayList                                      # duplicates
	$dups_in_B = New-Object System.Collections.ArrayList
	$dups_A_count = $dups_B_count = 0

	# Get list of unique prefs sorted alphabetically
	$unique_prefs = $prefsA.keys + $prefsB.keys | Sort-Object | Get-Unique

	# Get the length of the longest prefname, which will be used for padding the output.
	forEach ($prefname in $unique_prefs) {if ($pn_pad -lt $prefname.length) { $pn_pad = $prefname.length }}

	# Get the length of the longest filename, also for padding the output.
	if ($script:fileNameA.length -ge $script:fileNameB.length) { $fn_pad = $script:fileNameA.length }
	else {$fn_pad = $script:fileNameB.length}

	# Format for padding
	$summary_format = '{0, 5} {1, -1}'
	if ($script:inJS) {
		$list_format = '{0, -3} pref("{1, -1}", {2, -1});'
		$dlist_format = "/* {0, $(-$fn_pad)} */ {1, -3} pref(""{2, -1}"", {3, -1});$nl"
	} else {
		$list_format = "{0, -3} {1, $(-$pn_pad)}  {2, 1}"
		$dlist_format = "{0, -7} {1, $(-($fn_pad+3))}  {2, 1}$nl"
	}

	"$(JSCom 1)::::::::::::::: { Compare-UserJS Report } ::::::::::::::: $myversion$nl"
	Get-Date
	"$nl`Summary:"
	$summary_format -f $prefsA.count, "unique prefs in $fileNameA"
	$summary_format -f $prefsB.count, "unique prefs in $fileNameB$nl"

	forEach ($prefname in $unique_prefs) {
		if ($prefsA.$prefname) { $entriesA = $prefsA.$prefname } else { $entriesA = @() }
		if ($prefsB.$prefname) { $entriesB = $prefsB.$prefname } else { $entriesB = @() }
		$format_arA = @( $entriesA[-1].inactive, $prefname, [string]$entriesA[-1].value )
		$format_arB = @( $entriesB[-1].inactive, $prefname, [string]$entriesB[-1].value )
		if ($entriesA -and $entriesB) {
			if ($entriesA[-1].inactive -ne $entriesB[-1].inactive) {
				if ($entriesA[-1].value -ceq $entriesB[-1].value) {
					if ($entriesA[-1].inactive) {
						[void] $inactive_in_A.Add($list_format -f $format_arB)
					} else {
						[void] $inactive_in_B.Add($list_format -f $format_arA)
					}
				} else {
					if ($script:inJS) {
						[void] $fully_mismatching.Add(
							($dlist_format -f $fileNameA, $entriesA[-1].inactive, $prefname, $entriesA[-1].value) +
							($dlist_format -f $fileNameB, $entriesB[-1].inactive, $prefname, $entriesB[-1].value)
						)
					} else {
						[void] $fully_mismatching.Add(
							"    $prefname$nl" +
							($dlist_format -f $entriesA[-1].inactive, $fileNameA, $entriesA[-1].value) +
							($dlist_format -f $entriesB[-1].inactive, $fileNameB, $entriesB[-1].value)
						)
					}
				}
			} elseif ($entriesA[-1].value -ceq $entriesB[-1].value) {
				[void] $matching_prefs.Add($list_format -f $format_arA)
			} else {
				if ($script:inJS) {
					[void] $differences.Add((
						($dlist_format -f $fileNameA, $entriesA[-1].inactive, $prefname, $entriesA[-1].value) +
						($dlist_format -f $fileNameB, $entriesB[-1].inactive, $prefname, $entriesB[-1].value)
					))
				} else {
					[void] $differences.Add((
						("{0, -3} {1, -1}$nl" -f $entriesA[-1].inactive, $prefname) +
						($dlist_format -f '', $fileNameA, $entriesA[-1].value) +
						($dlist_format -f '', $fileNameB, $entriesB[-1].value)
					))
				}
			}
		} elseif ($entriesA) {
			[void] $missing_in_B.Add($list_format -f $format_arA)
		} else {
			[void] $missing_in_A.Add($list_format -f $format_arB)
		}
		if ($entriesA[-1].broken) {
			[void] $bad_syntax_A.Add($list_format -f $format_arA)
		}
		if ($entriesB[-1].broken) {
			[void] $bad_syntax_B.Add($list_format -f $format_arB)
		}
		if ($entriesA.count -gt 1) {
			if ($dups_A_count++) { [void] $dups_in_A.Add('') }
			forEach ($entry in $entriesA) {
				[void] $dups_in_A.Add(($list_format -f $entry.inactive, $prefname, [string]$entry.value))
			}
		}
		if ($entriesB.count -gt 1) {
			if ($dups_B_count++) { [void] $dups_in_B.Add('') }
			forEach ($entry in $entriesB) {
				[void] $dups_in_B.Add(($list_format -f $entry.inactive, $prefname, [string]$entry.value))
			}
		}
	}

	if ($matching_prefs.count) {
		$summary_format -f $matching_prefs.count, 'matching prefs, both value and state (active/inactive)'
	}
	if ($differences.count) {
		$summary_format -f $differences.count, 'prefs with different values but matching state'
	}
	if ($missing_in_A.count) {
		$summary_format -f $missing_in_A.count, "prefs not declared in $fileNameA"
	}
	if ($missing_in_B.count) {
		$summary_format -f $missing_in_B.count, "prefs not declared in $fileNameB"
	}
	if ($inactive_in_A.count) {
		$summary_format -f $inactive_in_A.count, "prefs with matching values but inactive in $fileNameA"
	}
	if ($inactive_in_B.count) {
		$summary_format -f $inactive_in_B.count, "prefs with matching values but inactive in $fileNameB"
	}
	if ($fully_mismatching.count) {
		$summary_format -f $fully_mismatching.count, 'prefs with both mismatching values and states'
	}
	' ----'
	$summary_format -f $unique_prefs.count, 'combined unique prefs'

	if ($bad_syntax_A.count -or $bad_syntax_B.count) {"$nl  Warning:$nl" }
	if ($bad_syntax_A.count) {
		$summary_format -f $bad_syntax_A.count, "prefs in $fileNameA seem to have broken values"
	}
	if ($bad_syntax_B.count) {
		$summary_format -f $bad_syntax_B.count, "prefs in $fileNameB seem to have broken values"
	}
	if ($dups_A_count -or $dups_B_count) {
		''
		if ($dups_A_count) {
			$summary_format -f $dups_A_count, "duplicated prefs in $fileNameA"
		}
		if ($dups_B_count) {
			$summary_format -f $dups_B_count, "duplicated prefs in $fileNameB"
		}
	}

	if (!$script:inJS) { "$nl Reference:  [i] inactive pref (commented-out)$nl" }
	JSCom 1

	$sep = "$(JSCom)------------------------------------------------------------------------------$nl$(JSCom)"
	if ($matching_prefs.count -and !($script:hideMask -band 1)) {
		"$sep The following $([string]$matching_prefs.count) prefs match in both values and states:$nl$nl$($matching_prefs -join $nl)$nl"
	}
	if ($differences.count -and !($script:hideMask -band 2)) {
		"$sep The following $([string]$differences.count) prefs have different values, but matching states:$nl$nl$($differences -join $nl)$nl"
	}
	if ($missing_in_A.count -and !($script:hideMask -band 4)) {
		"$sep The following $([string]$missing_in_A.count) prefs are not declared in $fileNameA`:$nl$nl$($missing_in_A -join $nl)$nl"
	}
	if ($missing_in_B.count -and !($script:hideMask -band 8)) {
		"$sep The following $([string]$missing_in_B.count) prefs are not declared in $fileNameB`:$nl$nl$($missing_in_B -join $nl)$nl"
	}
	if ($inactive_in_A.count -and !($script:hideMask -band 16)) {
		"$sep The following $([string]$inactive_in_A.count) prefs match but are inactive in $fileNameA`:$nl$nl$($inactive_in_A -join $nl)$nl"
	}
	if ($inactive_in_B.count -and !($script:hideMask -band 32)) {
		"$sep The following $([string]$inactive_in_B.count) prefs match but are inactive in $fileNameB`:$nl$nl$($inactive_in_B -join $nl)$nl"
	}
	if ($fully_mismatching.count -and !($script:hideMask -band 64)) {
		"$sep The following $([string]$fully_mismatching.count) prefs have both mismatching values and states:$nl$nl$($fully_mismatching -join $nl)$nl"
	}
	if ($bad_syntax_A.count -and !($script:hideMask -band 128)) {
		"$sep $([string]$bad_syntax_A.count) possible syntax errors detected in $fileNameA`:$nl$nl$($bad_syntax_A -join $nl)$nl"
	}
	if ($bad_syntax_B.count -and !($script:hideMask -band 128)) {
		"$sep $([string]$bad_syntax_B.count) possible syntax errors detected in $fileNameB`:$nl$nl$($bad_syntax_B -join $nl)$nl"
	}
	if ($dups_A_count -and !($script:hideMask -band 256)) {
		"$sep The following $dups_A_count prefs have duplicate entries in $fileNameA`:$nl$nl$($dups_in_A -join $nl)$nl"
	}
	if ($dups_B_count -and !($script:hideMask -band 256)) {
		"$sep The following $dups_B_count prefs have duplicate entries in $fileNameB`:$nl$nl$($dups_in_B -join $nl)$nl"
	}
}

#----------------[ Main Execution ]----------------------------------------------------

# Load files into memory, removing carriage returns in the process.
Write-Host "Loading $fileNameA ..."
$fileA = ([System.IO.File]::ReadAllText($filepath_A)) -creplace '\r', ''
Write-Host "Loading $fileNameB ..."
$fileB = ([System.IO.File]::ReadAllText($filepath_B)) -creplace '\r', ''

# Parse files
Write-Host "Parsing $fileNameA ..."
Read-InactivePrefs $prefsA $fileA $noCommentsA
Read-ActivePrefs $prefsA $fileA $noCommentsA

Write-Host "Parsing $fileNameB ..."
Read-InactivePrefs $prefsB $fileB $noCommentsB
Read-ActivePrefs $prefsB $fileB $noCommentsB

Write-Host "Generating and writing report to $outputFile ...`nDon't close the console/terminal!"
$outstream = New-Object System.IO.StreamWriter $outputFile, $append
try { forEach ( $line in Write-Report ) { $outstream.WriteLine($line) } }
finally { $outstream.Close() }
$prompt = Read-Host 'All done. Would you like to open the log file with the default editor? (y/n)'
if ($prompt -eq 'y') {Invoke-Item -path $outputFile}
