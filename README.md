<p align="center">
<a href="https://github.com/intika/Librefox-Firefox/"><img width="727" src="https://img.shields.io/badge/Librefox-Firefox-lightgray.svg?logo=appveyor&longCache=true&style=popout"></a>
</p>
<p align="center">
<a href="https://github.com/intika/Librefox-Firefox/releases"><img src="https://img.shields.io/badge/Version-2.0.b--63.0.3-green.svg"></a> <a href="https://www.opendesktop.org/p/1275853/" target="_blank"><img src="https://img.shields.io/badge/Downloads-+%20100-green.svg"></a> <a href="https://github.com/intika/Librefox-Firefox/commits/master"><img src="https://img.shields.io/badge/Maintained%20%3F-Yes-green.svg"></a> <a href="https://github.com/intika/Librefox-Firefox/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/badge/Solved%20issues-6-green.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/2.0/" target="_blank"><img src="https://img.shields.io/badge/License-Mozilla--MLP2-blue.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/" target="_blank"><img src="https://badges.frapsoft.com/os/v2/open-source.png?v=103"></a>
</p>

---
This project aim to fix security and privacy issues related to firefox without loosing speed performances. It uses `local-settings.js`, `mozilla.cfg` and `policies.json`.

---

Features :
----------
Librefox uses [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) settings, additional privacy, performances settings and a cleaned bundle of firefox (updater, crashreporter and integrated addons that don't respect privacy are removed) to provide :

- Performances 
- Security
- Privacy

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

Librefox addons :
-----------------
Librefox addons are not bundeled and need to be installed manually

- [Librefox HTTP Watcher](https://github.com/intika/Librefox-HTTP-Watcher)

Recommended addons :
--------------------
- [NoHTTP](https://addons.mozilla.org/en-US/firefox/addon/nohttp)
- [Cookie Master](https://addons.mozilla.org/en-US/firefox/addon/cookiemaster/)
- [User Agent Platform Spoofer](https://addons.mozilla.org/en-US/firefox/addon/user-agent-platform-spoofer/)
- [Browser Plugs Privacy Firewall](https://addons.mozilla.org/en-US/firefox/addon/browser-plugs-privacy-firewall/)
- [uBock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) [+ IDCAC List](https://www.i-dont-care-about-cookies.eu/) [+ Nano-Defender List](https://jspenguin2017.github.io/uBlockProtector/#extra-installation-steps-for-ublock-origin)

Recommended addons settings :
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
Key features version 2.0 beta :
-------------------------------
- Updated [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) settings
- Enforcing Settings (Can not be changed within firefox)
- Defaulting Settings (Changing default value for some settings)
- Limit internet access for extensions (details bellow)
- "IJWY To Shut Up" settings (details bellow)
- Calculate settings impact on performances
...

Extensions Firewall :
---------------------
*This is a test experimental feature !!!*

A new section `Extensions Firewall` is added to block networking for extensions, only requested domain with specific permission are allowed, they could then be blocked with a host file or similar if the user want to block addons complitely. (if an addon does not ask for a specific domain he will be offline.)

IJWY (I just want you to shut up) :
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

Edit locked settings :
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

Infos :
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
// --------------------------------------------------------------------
// Section : User settings                 // Bench Diff : +0    / 5000
// ----------------------------------------
// Section : Controversial                 // Bench Diff : +0    / 5000
// Section : Firefox Fingerprint           // Bench Diff : +0    / 5000
// Section : Locale/Time                   // Bench Diff : +0    / 5000
// Section : Ghacks-user Select            // Bench Diff : +100  / 5000
// Section : IJWY To Shut Up               // Bench Diff : ???   / 5000
// Section : Microsoft Windows             // Bench Diff : ???   / 5000
// Section : Disabled                      // Bench Diff : ???   / 5000
// ----------------------------------------
// Section : Security 1/3                  // Bench Diff : +0    / 5000
// Section : Security 2/3                  // Bench Diff : +0    / 5000
// Section : Security 3/3 (Cipher)         // Bench Diff : +0    / 5000
// ----------------------------------------
// Section : Performances 1/5              // Bench Diff : +650  / 5000
// Section : Performances 2/5              // Bench Diff : -800  / 5000
// Section : Performances 3/5              // Bench Diff : -1720 / 5000
// Section : Performances 4/5              // Bench Diff : -200  / 5000 
// Section : Performances 5/5              // Bench Diff : -50   / 5000 
// ----------------------------------------
// Section : General Settings 1/3          // Bench Diff : +100  / 5000
// Section : General Settings 2/3          // Bench Diff : +0    / 5000
// Section : General Settings 3/3          // Bench Diff : -40   / 5000
// --------------------------------------------------------------------

// ==============================
// Index local-settings.js .... :
// ==============================
//
// --------------------------------------------------------------------
// Section : General Settings              // Bench Diff : ++    / 5000
// ----------------------------------------
// Section : Defaulting Settings           // Bench Diff : ???   / 5000
// --------------------------------------------------------------------

```

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

One simple solution is to bookmark "about:profiles" ... when restart is needed open that page and click "normal restart"

![capture](https://user-images.githubusercontent.com/6892180/48963055-bd914000-ef82-11e8-8ea4-a58e56f5c4a4.png)
... 

**Full Dark Theme :**

<a href="https://github.com/overdodactyl/ShadowFox" target="_blank"><img height=80px src="https://raw.githubusercontent.com/overdodactyl/ShadowFox/master/.github/Screenshots/header.png"></a>

**Other addons :**

- [Dormancy](https://addons.mozilla.org/en-US/firefox/addon/dormancy/) : Unload tab after a certain time, usefull for performances when opening a lot of tabs 
- [Add Custom Search Engine](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/) : Cutomize your search engine 
- [ProxySwitcheroo](https://addons.mozilla.org/en-US/firefox/addon/proxyswitcheroo/) : Applying proxy settings in a click
- [Advanced Github Notifier](https://addons.mozilla.org/en-US/firefox/addon/advanced-github-notifier/) : Github notifications
- [UndoCloseTabButton](https://addons.mozilla.org/en-US/firefox/addon/undoclosetabbutton/) : Reopen last closed tab
- [Shortkeys](https://addons.mozilla.org/en-US/firefox/addon/shortkeys/) : Add custom shortkeys
- [Tabboo](https://addons.mozilla.org/en-US/firefox/addon/tabboo-session-manager/) : Session manager

Building with tor :
-------------------
Same as [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) recommendations, we do not recommend connecting over Tor on Librefox. Use the Tor Browser if your threat model calls for it, or for accessing hidden services.

Building and packaging :
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
