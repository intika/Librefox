<p align="center">
<a href="https://github.com/intika/Librefox-Firefox/"><img width="727" src="https://img.shields.io/badge/Librefox-Firefox-lightgray.svg?logo=appveyor&longCache=true&style=popout"></a>
</p>
<p align="center">
<a href="https://github.com/intika/Librefox-Firefox/releases"><img src="https://img.shields.io/badge/Version-2.0.b--63.0.3-green.svg"></a> <a href="https://www.opendesktop.org/p/1275853/" target="_blank"><img src="https://img.shields.io/badge/Downloads-+%20150-green.svg"></a> <a href="https://github.com/intika/Librefox-Firefox/commits/master"><img src="https://img.shields.io/badge/Maintained%20%3F-Yes-green.svg"></a> <a href="https://github.com/intika/Librefox-Firefox/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/badge/Solved%20issues-6-green.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/2.0/" target="_blank"><img src="https://img.shields.io/badge/License-Mozilla--MLP2-blue.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/" target="_blank"><img src="https://badges.frapsoft.com/os/v2/open-source.png?v=103"></a>
</p>

---
This project aim to fix security and privacy issues related to firefox without loosing speed performances. It uses `local-settings.js`, `mozilla.cfg` and `policies.json`.

Features :
----------
Librefox uses [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) settings, additional privacy, performances settings and a cleaned bundle of firefox (updater, crashreporter and integrated addons that don't respect privacy are removed) to provide :

- Performances 
- Security
- Privacy

---

Index :
-------
<pre>
<a href="https://github.com/intika/Librefox-Firefox/#features-"
>> Librefox : Features ............................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#key-features-v2.x-"
>> Librefox : Key Features v2.x ...................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#download-"
>> Librefox : Download ............................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#capture-"
>> Librefox : Capture ................................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#librefox-addons-"
>> Addons : Librefox Addons .......................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#recommended-addons-"
>> Addons : Recommended Addons ....................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#recommended-addons-settings-"
>> Addons : Recommended Settings ..................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#reviewing-extensions-code-"
>> Addons : Reviewing Extensions Code ................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#extensions-firewall-"
>> Wiki : Extensions Firewall ........................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#ijwy-i-just-want-you-to-shut-up-"
>> Wiki : IJWY (I Just Want You To Shut Up) .......................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#apply-librefox-manually-"
>> Wiki : Apply Librefox Manually .................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#edit-locked-settings-"
>> Wiki : Edit Locked Settings ....................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#settings-index-"
>> Wiki : Settings Index ............................................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#comparing-changes-and-updates-"
>> Wiki : Comparing Changes And Updates .............................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#documentation-"
>> Wiki : Documentation .............................................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#tuning-librefox--"
>> Wiki : Tuning Librefox ............................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#librefox-version-"
>> Wiki : Librefox ESR ............................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#tor-compatibility-"
>> Wiki : Tor Compatibility .......................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#building-and-packaging-"
>> Wiki : Building And Packaging ..................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#browser-tests--securityfingerprint-"
>> Browser Tests : Security/Fingerprint .............................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#browser-tests--performances-"
>> Browser Tests : Performances ...................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#browser-tests--dnsvpnproxy-leak-"
>> Browser Tests : DNS/VPN/Proxy Leak ................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#changelog-"
>> Infos : Changelog ................................................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#about-"
>> Infos : About ..................................................................... </a>
</pre>

Download :
----------
Official builds with librefox

- [Privafox-1.8-Firefox-Linux-63.0.3.tar.bz2](https://github.com/intika/Librefox-Firefox/releases/download/Privafox-v1.8-v63.0.3/Privafox-1.8-Firefox-Linux-63.0.3.tar.bz2) - 51.8 MB - SHA1 : 321152189184ca9e2b3500a0aa5c5c47aff5999f

- [Privafox-1.8-Firefox-Windows-63.0.3.zip](https://github.com/intika/Librefox-Firefox/releases/download/Privafox-v1.8-v63.0.3/Privafox-1.8-Firefox-Windows-63.0.3.zip) - 60.3 MB - SHA1 : 4dba7913435d5517f4e10f7b55aa395e5088b143

- [Privafox-1.8-Firefox-Mac-63.0.3.dmg](https://github.com/intika/Librefox-Firefox/releases/download/Privafox-v1.8-v63.0.3/Privafox-1.8-Firefox-Mac-63.0.3.dmg) - 60.5 MB - SHA1 : e693b9141098456a419ed7fb71f4b8c42001cde9

Beta/alpha releases (soon)

- Librefox-2.0B-Firefox-Linux-63.0.3.tar.bz2[](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.0B-v63.0.3/Librefox-2.0B-Firefox-Linux-63.0.3.tar.bz2) - 51.8 MB - SHA1 : 321152189184ca9e2b3500a0aa5c5c47aff5999f

- Librefox-2.0B-Firefox-Windows-63.0.3.zip[](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.0B-v63.0.3/Librefox-2.0B-Firefox-Windows-63.0.3.zip) - 60.3 MB - SHA1 : 4dba7913435d5517f4e10f7b55aa395e5088b143

- Librefox-2.0B-Firefox-Mac-63.0.3.dmg[](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.0B-v63.0.3/Librefox-2.0B-Firefox-Mac-63.0.3.dmg) - 60.5 MB - SHA1 : e693b9141098456a419ed7fb71f4b8c42001cde9

Capture :
---------
<p align="center">
  <img width="650" src="https://raw.githubusercontent.com/intika/Librefox-Firefox/master/capture.png">
</p>

Librefox Addons :
-----------------
Librefox addons are not bundeled and need to be installed manually

- [Librefox HTTP Watcher](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-red-flag/)
- [Librefox Dark Theme](https://addons.mozilla.org/en-US/firefox/addon/librefox-dark-theme/)
- [Librefox Reload Button](https://addons.mozilla.org/en-US/firefox/addon/librefox-reload-button-url-bar/)

Recommended Addons :
--------------------
- [NoHTTP](https://addons.mozilla.org/en-US/firefox/addon/nohttp)
- [Cookie Master](https://addons.mozilla.org/en-US/firefox/addon/cookiemaster/)
- [Google Container](https://addons.mozilla.org/en-US/firefox/addon/google-container/)
- [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/)
- [First Party Isolation](https://addons.mozilla.org/en-US/firefox/addon/first-party-isolation/)
- [User Agent Platform Spoofer](https://addons.mozilla.org/en-US/firefox/addon/user-agent-platform-spoofer/)
- [Browser Plugs Privacy Firewall](https://addons.mozilla.org/en-US/firefox/addon/browser-plugs-privacy-firewall/)
- [uBock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) [+ IDCAC List](https://www.i-dont-care-about-cookies.eu/) [+ Nano-Defender List](https://jspenguin2017.github.io/uBlockProtector/#extra-installation-steps-for-ublock-origin)

Recommended Addons Settings :
-----------------------------
`uBlock` : Additional filter are available here https://filterlists.com/ (don't surcharge it to avoid performances loss)

`Browser Plugs Privacy Firewall` : Keep  settings light to make `privacy.resistFingerprinting` efficient because too much customization lead to uniqueness thus easy fingerprinting. 
```
  - Privacy / Fingerprint / Fake values for getClientRects
  - Privacy / Fingerprint / Randomize Canvas Fingerprint
  - Privacy / Fingerprint / 100% Randomize ALL Fingerprint Hash
  - Firewall / Experimental / Block SVG getBBox and getComputedTextLength
  - Privacy / Font / Randomize
  - Privacy / Font / Enable protection for font and glyph fingerprinting
```
Key Features v2.x :
-------------------
- Updated [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) settings
- Enforcing Settings (Can not be changed within firefox)
- Defaulting Settings (Changing default value for some settings)
- Limit internet access for extensions ([details](https://github.com/intika/Librefox-Firefox/#extensions-firewall-))
- "IJWY To Shut Up" settings ([details](https://github.com/intika/Librefox-Firefox/#ijwy-i-just-want-you-to-shut-up-))
- Calculate settings impact on performances
...

Reviewing Extensions Code :
---------------------------
Recommanded extensions code have been reviewed for potential unwanted behaviour... reviewed version are available under [extensions](https://github.com/intika/Librefox-Firefox/tree/master/extensions) directory

Extensions Firewall :
---------------------
*This is a test experimental feature !!!*

A new section `Extensions Firewall` is added to block networking for extensions, only requested domain with specific permission are allowed, they could then be blocked with a host file or similar if the user want to block addons complitely. (if an addon does not ask for a specific domain he will be offline.)
This is a test feature it could be abandoned.

IJWY (I Just Want You To Shut Up) :
-----------------------------------
*This is an experimental feature.* 

This is a set of settings that aim to remove all the servers links embedded in firefox and other calling home functions in the purpose of blocking un-needed connections. Objective, zero unauthorized connection (ping/telemetry/mozilla/google...).

Changelog :
-----------
Available in the [releases page](https://github.com/intika/Librefox-Firefox/releases)

Apply Librefox Manually :
-------------------------
- Copy `mozilla.cfg` to `/firefox-install-dir/` 
- Copy `local-settings.js` to `/firefox-install-dir/defaults/pref/`
- Copy `policies.json` to `/firefox-install-dir/distribution/`
- If destination directories does not exist create them
- Setup the rest of the settings as you wish in `about:preferences`  
- Delete the following files
``` 
    firefox/browser/features/aushelper@mozilla.org.xpi
    firefox/browser/features/firefox@getpocket.com.xpi
    firefox/browser/features/onboarding@mozilla.org.xpi
    firefox/browser/features/webcompat-reporter@mozilla.org.xpi
    firefox/browser/features/webcompat@mozilla.org.xpi
    firefox/update-settings.ini
    firefox/updater.ini
    firefox/updater
    firefox/crashreporter.ini
    firefox/crashreporter
``` 

Edit Locked Settings :
----------------------
Just edit `mozilla.cfg` save and restart firefox

Browser Tests : Security/Fingerprint : 
----------------------------------------------
Firefox 60 and `privacy.resistFingerprinting` are relatively new give it sometimes to be more widely used and thus less finger-printable; If you are using an other site to analyse your browser make sure to read and understand what the test is about.

- [SSLLabs](https://www.ssllabs.com/ssltest/viewMyClient.html)
- [AmiUnique](https://amiunique.org/fp)
- [BrowserLeaks](https://browserleaks.com/)
- [BrowserPlugs](https://www.browserplugs.com/fingerprint-test/index.html)
- [FingerPrintJS2](https://valve.github.io/fingerprintjs2/)

Browser Tests : Performances :
------------------------------
Performance tests can be done here [LVP Octane](https://intika.github.io/lvp-octane/), it needs to be launched alone with other applications closed and with no other activity but the benchmark, also it's recommended to lunch it many times and then make an average.

Browser Tests : DNS/VPN/Proxy Leak :
------------------------------------
- [IPLeak](https://ipleak.net/)
- [Tenta-Test](https://tenta.com/test/)
- [IP-Browserleaks](https://browserleaks.com/ip)

About :
-------
**Autor :** Intika - intikadev (at) gmail.com

**Donation :** Paypal : intikadev (at) gmail.com

**Based on :** [User.js](https://github.com/pyllyukko/user.js/), [PrivaConf](https://addons.mozilla.org/en-US/firefox/addon/privaconf/) and [Ghacks-user.js](https://github.com/ghacksuserjs/ghacks-user.js) big thanks to all of them

Settings Index :
----------------
```
// ==============================
// Index mozilla.cfg .......... :
// ==============================
//
// -----------------------------------------------------------------------
// Section : User settings                    // Bench Diff : +0    / 5000
// Section : Defaulting Settings              // Bench Diff : ???   / 5000
// -------------------------------------------
// Section : Controversial                    // Bench Diff : +0    / 5000
// Section : Firefox Fingerprint              // Bench Diff : +0    / 5000
// Section : Locale/Time                      // Bench Diff : +0    / 5000
// Section : Ghacks-user Selection            // Bench Diff : +100  / 5000
// Section : Extensions Firewall              // Bench Diff : ???   / 5000
// Section : IJWY To Shut Up                  // Bench Diff : ???   / 5000
// Section : Microsoft Windows                // Bench Diff : ???   / 5000
// Section : Firefox ESR60.x                  // Bench Diff : ???   / 5000
// -------------------------------------------
// Section : Security 1/3                     // Bench Diff : +0    / 5000
// Section : Security 2/3                     // Bench Diff : +0    / 5000
// Section : Security 3/3 (Cipher)            // Bench Diff : +0    / 5000
// -------------------------------------------
// Section : Performances 1/5                 // Bench Diff : +650  / 5000
// Section : Performances 2/5                 // Bench Diff : -800  / 5000
// Section : Performances 3/5                 // Bench Diff : -1720 / 5000
// Section : Performances 4/5                 // Bench Diff : -200  / 5000 
// Section : Performances 5/5                 // Bench Diff : -50   / 5000 
// -------------------------------------------
// Section : General Settings 1/3             // Bench Diff : +100  / 5000
// Section : General Settings 2/3             // Bench Diff : +0    / 5000
// Section : General Settings 3/3             // Bench Diff : -40   / 5000
// -------------------------------------------
// Section : Disabled - ON/OFF                // Bench Diff : ???   / 5000
// Section : Disabled - Deprecated Active     // Bench Diff : ???   / 5000
// Section : Disabled - Deprecated Inactive   // Bench Diff : +0    / 5000
// -----------------------------------------------------------------------

// ==============================
// Index local-settings.js .... :
// ==============================
//
// -----------------------------------------------------------------------
// Section : General Settings                 // Bench Diff : ++    / 5000
// -----------------------------------------------------------------------

```

Comparing Changes And Updates :
-------------------------------
If you want to compare changes over updates or if you already have a `user.js`/`mozilla.cfg`/`policies.json`. consider using [Compare-UserJS](https://github.com/claustromaniac/Compare-UserJS), an amazing tool to compare user.js files and output the diffs in detailed breakdown, developed by gHack's very own resident cat, [claustromaniac](https://github.com/claustromaniac) :cat:

Usage : If not on windows install [PowerShell](https://github.com/PowerShell/PowerShell) then for example `pwsh Compare-UserJS.ps1 mozilla.cfg user.js` (Warning that PowerShell connect to MS sometimes)

Documentation :
---------------

**Local-settings.js** : Defaulting firefox settings 

**Mozilla.cfg** : Locking firefox settings for security, privacy & prevent settings changes 

**Policies.json** : The policies.json is cross-platform compatible, making it preferred method for enterprise environments that have workstations running various operating systems (the settings availables with `policies.json` are limited right now because this is a new feature of firefox)

**Bench diff** : Impact on the performances of firefox can be a gain or a loss of performance +100/5000 stand for 2% gained performance and -1500/5000 stand for -30% performance loss
               
**lockPref** : Locked preference can not be changed on firefox, nor by extensions, can only be changed here

**Section** : Description of the settings section separated by ">>>..."

**Defaulting VS Enforcing** : Default settings value are changed in `local-settings.js` and enforced settings are changed in `mozilla.cfg`, defaulted setting can be changed by the user in the browser while enforced settings are locked and can not be changed within the browser.

Tuning Librefox  :
------------------

**Restart Button :**

One simple solution is to bookmark `about:profiles` ... when restart is needed open that page and click "normal restart". You can even go further and add the bookmarks links to your icons bar and rename the link to an emty text (you will then have a direct icon to `about:profiles` and a 2 clicks reboot)

![capture](https://user-images.githubusercontent.com/6892180/48963055-bd914000-ef82-11e8-8ea4-a58e56f5c4a4.png)
... 

**Full Dark Theme :**

<a href="https://github.com/overdodactyl/ShadowFox" target="_blank"><img height=80px src="https://raw.githubusercontent.com/overdodactyl/ShadowFox/master/.github/Screenshots/header.png"></a>

**Linux Fix White Text :**

On linux when using a dark desktop theme firefox could display white text over white background on some site... to fix just use those values in `about:config` (you need to have Adwaita theme installed) [more details](https://github.com/DmitriK/darkContrast#text-contrast-for-dark-themes)
```
widget.content.allow-gtk-dark-theme;false
widget.chrome.allow-gtk-dark-theme;false
widget.content.gtk-theme-override;Adwaita:light
```

**Other addons :**

- [Dormancy](https://addons.mozilla.org/en-US/firefox/addon/dormancy/) : Unload tab after a certain time, usefull for performances when opening a lot of tabs 
- [Add Custom Search Engine](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/) : Cutomize your search engine 
- [ProxySwitcheroo](https://addons.mozilla.org/en-US/firefox/addon/proxyswitcheroo/) : Applying proxy settings in a click
- [UndoCloseTabButton](https://addons.mozilla.org/en-US/firefox/addon/undoclosetabbutton/) : Reopen last closed tab
- [Advanced Github Notifier](https://addons.mozilla.org/en-US/firefox/addon/advanced-github-notifier/) : Github notifications
- [Request Blocker](https://addons.mozilla.org/en-US/firefox/addon/request-blocker-we/) : Host style blocking sites
- [Shortkeys](https://addons.mozilla.org/en-US/firefox/addon/shortkeys/) : Add custom shortkeys
- [Tabboo](https://addons.mozilla.org/en-US/firefox/addon/tabboo-session-manager/) : Session manager

Tor Compatibility :
-------------------
Same as [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) recommendations, we do not recommend connecting over Tor on Librefox. Use the Tor Browser if your threat model calls for it, or for accessing hidden services (Thus said tor settings have been enabled in v2 for user toriffying/proxifying their whole connection).

Tor compatibility may change.

**Librefox Addons For Tor Version :**
- [Librefox HTTP Watcher ESR - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-tor-mod/)
- [Librefox NoHTTP - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/nohttp-librefox-mod-for-tor/)

Librefox ESR :
--------------
For ESR users if you opt for `Librefox HTTP Watcher` you need to use this version [Librefox HTTP Watcher ESR - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-tor-mod/)

Building And Packaging :
------------------------
Librefox is applied to a built version of firefox, you can [build it](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Build_Instructions) or use the [version provided by mozilla](https://ftp.mozilla.org/pub/firefox/releases/63.0.3/)

**Linux :**

- Extract [firefox-63.0.3.tar.bz2](https://download-installer.cdn.mozilla.net/pub/firefox/releases/63.0.3/linux-x86_64/en-US/firefox-63.0.3.tar.bz2)
- `git clone https://github.com/intika/Librefox-Firefox.git`
- Copy `mozilla.cfg` to `firefox/` 
- Copy `local-settings.js` to `firefox/defaults/pref/`
- Create a folder `firefox/distribution/`
- Copy `policies.json` to `firefox/distribution/`
- Delete the following files and then compress the package (tar.bz2)
``` 
    firefox/browser/features/aushelper@mozilla.org.xpi
    firefox/browser/features/firefox@getpocket.com.xpi
    firefox/browser/features/onboarding@mozilla.org.xpi
    firefox/browser/features/webcompat-reporter@mozilla.org.xpi
    firefox/browser/features/webcompat@mozilla.org.xpi
    firefox/update-settings.ini
    firefox/updater.ini
    firefox/updater
    firefox/crashreporter.ini
    firefox/crashreporter
``` 

**Windows :**

- Extract [Firefox Setup 63.0.3.exe](https://download-installer.cdn.mozilla.net/pub/firefox/releases/63.0.3/win64/en-US/Firefox%20Setup%2063.0.3.exe) (Can be done by launching it, files are extracted to `%tmp%`)
- `git clone https://github.com/intika/Librefox-Firefox.git`
- Copy `mozilla.cfg` to `core/` 
- Copy `local-settings.js` to `core/defaults/pref/`
- Create a folder `core/distribution/` 
- Copy `policies.json` to `core/distribution/`
- Delete the following files and then compress the package (zip)
``` 
    core/browser/features/aushelper@mozilla.org.xpi
    core/browser/features/firefox@getpocket.com.xpi
    core/browser/features/onboarding@mozilla.org.xpi
    core/browser/features/webcompat-reporter@mozilla.org.xpi
    core/browser/features/webcompat@mozilla.org.xpi
    core/update-settings.ini
    core/updater.ini
    core/updater.exe
    core/crashreporter.ini
    core/crashreporter.exe
``` 

**Mac :**

- Require a mac
- Decompressing [Firefox 63.0.3.dmg](https://download-installer.cdn.mozilla.net/pub/firefox/releases/63.0.3/mac/en-US/Firefox%2063.0.3.dmg) with tools like (hdiutils/dropdmg/disk-utilities/ultraiso/transmac)
- `git clone https://github.com/intika/Librefox-Firefox.git`
- Rename the decomrpessed Firefox-63.0.3.dmg to Librefox-Firefox-63.0.3.dmg
- Mount Librefox-Firefox-63.0.3.dmg 
- Replace `Firefox/Firefox.app/.background/background.png` with the one from this git
- Remove the directory `Firefox/Firefox.app/Contents/_CodeSignature`
- Remove the directory `Firefox/Firefox.app/Contents/MacOS/plugin-container.app/Contents/_CodeSignature` (this one does not seem to be required)
- Run `codesign --remove-signature Firefox.app` (This basically remove the signature from `Firefox/Firefox.app/Contents/MacOS/firefox`)
- Remove the directory `Firefox/Firefox.app/Contents/MacOS/crashreporter.app/`
- Remove the directory `Firefox/Firefox.app/Contents/MacOS/updater.app/`
- Remove `Firefox/Firefox.app/Contents/Library/LaunchServices/org.mozilla.updater`
- Remove `Firefox/Firefox.app/Contents/Ressources/browser/features/aushelper@mozilla.org.xpi`
- Remove `Firefox/Firefox.app/Contents/Ressources/browser/features/firefox@getpocket.com.xpi`
- Remove `Firefox/Firefox.app/Contents/Ressources/browser/features/onboarding@mozilla.org.xpi`
- Remove `Firefox/Firefox.app/Contents/Ressources/browser/features/webcompat-reporter@mozilla.org.xpi`
- Remove `Firefox/Firefox.app/Contents/Ressources/browser/features/webcompat@mozilla.org.xpi`
- Remove `Firefox/Firefox.app/Contents/Ressources/update-settings.ini`
- Remove `Firefox/Firefox.app/Contents/Ressources/updater.ini`
- Copy `mozilla.cfg` to `Firefox/Firefox.app/Contents/Ressources/` 
- Copy `local-settings.js` to `Firefox/Firefox.app/Contents/Ressources/defaults/pref/`
- Create a folder `Firefox/Firefox.app/Contents/Ressources/distribution/` 
- Copy `policies.json` to `Firefox/Firefox.app/Contents/Ressources/distribution/`
- Unmount the dmg file 
- Compress it with tools like (hdiutils/dropdmg/disk-utilities/ultraiso/transmac) 
