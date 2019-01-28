set fs  = CreateObject("Scripting.FileSystemObject")
set ws  = WScript.CreateObject("WScript.Shell")
set arg = Wscript.Arguments

linkFile = arg(0)

set link = ws.CreateShortcut(linkFile)
    link.TargetPath = fs.BuildPath(ws.CurrentDirectory, arg(1))
    link.Save
