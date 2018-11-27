# Privafox-Firefox
This project aim to fix security and privacy issues related to firefox without loosing speed performances. It uses `mozilla.cfg` and `policies.json`.

Features :
----------
Privafox uses [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) settings, additional performances settings and a cleaned bundle of firefox (updater, crashreporter and integrated addons that don't respect privacy are removed) to provide :

- Performances 
- Security
- Privacy

Download :
----------
Official builds with privafox

- [Privafox-1.5-Firefox-Linux-63.0.3.tar.bz2](https://github.com/intika/privafox-firefox/releases/download/Privafox-v1.5-v63.0.3/privafox-1.5-firefox-linux-63.0.3.tar.bz2) - 51.8 MB - SHA1 : 4295799cc3bbc809eaa56a6fe347f30c0af737c5 

- [Privafox-1.5-Firefox-Windows-63.0.3.zip](https://github.com/intika/privafox-firefox/releases/download/Privafox-v1.5-v63.0.3/privafox-1.5-firefox-win-63.0.3.zip) - 60.3 MB - SHA1 : 89b0234770e60cbd9c41f0d59e42283e44d17d60 

- [Privafox-1.5-Firefox-Mac-63.0.3.dmg](https://github.com/intika/privafox-firefox/releases/download/Privafox-v1.5-v63.0.3/privafox-1.5-firefox-mac-63.0.3.dmg) - 60.5 MB - SHA1 : 5b57e9996fb7017cb2444958bef8ac8338ac19a4

Capture :
---------
<p align="center">
  <img width="650" src="https://raw.githubusercontent.com/intika/privafox-firefox/master/capture.png">
</p>

Recommended addons :
--------------------
- [NoHTTP](https://addons.mozilla.org/en-US/firefox/addon/nohttp)
- [Cookie Master](https://addons.mozilla.org/en-US/firefox/addon/cookiemaster/)
- [HTTP Says Insecure](https://addons.mozilla.org/en-US/firefox/addon/http-says-insecure)
- [User Agent Platform Spoofer](https://addons.mozilla.org/en-US/firefox/addon/user-agent-platform-spoofer/)
- [Browser Plugs Privacy Firewall](https://addons.mozilla.org/en-US/firefox/addon/browser-plugs-privacy-firewall/)
- [uBock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) [+ IDCAC List](https://www.i-dont-care-about-cookies.eu/) [+ Nano-Defender List](https://jspenguin2017.github.io/uBlockProtector/#extra-installation-steps-for-ublock-origin)

Recommended addons settings :
-----------------------------
`Browser Plugs Privacy Firewall` : Keep  settings light to make `privacy.resistFingerprinting` efficient because too much customization lead to uniqueness thus easy fingerprinting. 
```
  - Privacy / Fingerprint / Fake values for getClientRects
  - Privacy / Fingerprint / Randomize Canvas Fingerprint
  - Privacy / Fingerprint / 100% Randomize ALL Fingerprint Hash
  - Firewall / Experimental / Block SVG getBBox and getComputedTextLength
  - Privacy / Font / Randomize
  - Privacy / Font / Enable protection for font and glyph fingerprinting
```

`uBlock` : Additional filter are available here https://filterlists.com/ (don't surcharge it to avoid performances loss)

Apply-it Manually :
-------------------
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

Settings Index (`mozilla.cfg`) :
--------------------------------
```
// Index :
// -------
//
// Section : Performances 1/5              // Bench Diff : +650  / 5000
// Section : Performances 2/5              // Bench Diff : -800  / 5000
// Section : Performances 3/5              // Bench Diff : -1720 / 5000
// Section : Performances 4/5              // Bench Diff : -200  / 5000 
// Section : Performances 5/5              // Bench Diff : -50   / 5000 
// ----------------------------------------
// Section : Controversial                 // Bench Diff : +0    / 5000
// Section : Cookies Settings              // Bench Diff : +0    / 5000
// Section : Firefox ResistFingerprinting  // Bench Diff : +0    / 5000
// Section : Locale/Time                   // Bench Diff : +0    / 5000
// Section : Ghacks-user Select            // Bench Diff : +100  / 5000
// ----------------------------------------
// Section : General Settings 1/3          // Bench Diff : +100  / 5000
// Section : General Settings 2/3          // Bench Diff : +0    / 5000
// Section : General Settings 3/3          // Bench Diff : -40   / 5000
// ----------------------------------------
// Section : Security 1/3                  // Bench Diff : +0/5000
// Section : Security 2/3                  // Bench Diff : +0/5000
// Section : Security 3/3 (Cipher)         // Bench Diff : +0/5000
// ----------------------------------------
// Section : Microsoft Windows             // Bench Diff : ???/5000
// ----------------------------------------
// Section : Disabled                      // Bench Diff : ???/5000
```

Documentation :
---------------

**Mozilla.cfg** : Locking firefox settings for security, privacy & prevent settings changes 

**Policies.json** : The policies.json is cross-platform compatible, making it preferred method for enterprise environments that have workstations running various operating systems (the settings availables with `policies.json` are limited right now because this is a new feature of firefox)

**Bench diff** : Impact on the performances of firefox can be a gain or loss of performance +100/5000 stand for 2% gained performance and -1500/5000 stand for -30% performance loss
               
**lockPref** : Locked preference can not be changed on firefox, nor by extensions, can only be changed here

**Section** : Description of the settings section separated by "----"


Building and packaging :
------------------------

Privafox is applied to a built version of firefox, you can [build it](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Build_Instructions) or use the [version provided by mozilla](https://ftp.mozilla.org/pub/firefox/releases/63.0.3/)

**Linux :**

- Extract [firefox-63.0.3.tar.bz2](https://download-installer.cdn.mozilla.net/pub/firefox/releases/63.0.3/linux-x86_64/en-US/firefox-63.0.3.tar.bz2)
- `git clone https://github.com/intika/privafox-firefox.git`
- Copy `mozilla.cfg` to `firefox/` 
- Copy `local-settings.js` to `firefox/defaults/pref/`
- Create a folder `firefox/distribution/`
- Copy `policies.json` to `firefox/distribution/`
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
- Compress the package (tar.bz2)

**Windows :**

- Extract [Firefox Setup 63.0.3.exe](https://download-installer.cdn.mozilla.net/pub/firefox/releases/63.0.3/win64/en-US/Firefox%20Setup%2063.0.3.exe) (Can be done by launching it, files are extracted to `%tmp%`)
- `git clone https://github.com/intika/privafox-firefox.git`
- Copy `mozilla.cfg` to `core/` 
- Copy `local-settings.js` to `core/defaults/pref/`
- Create a folder `core/distribution/` 
- Copy `policies.json` to `core/distribution/`
- Delete the following files
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
- Compress the package (zip)

**Mac :**

- Require a mac
- Decompressing [Firefox 63.0.3.dmg](https://download-installer.cdn.mozilla.net/pub/firefox/releases/63.0.3/mac/en-US/Firefox%2063.0.3.dmg) with tools like (hdiutils/dropdmg/disk-utilities/ultraiso/transmac)
- `git clone https://github.com/intika/privafox-firefox.git`
- Rename the decomrpessed Firefox-63.0.3.dmg to privafox-firefox-63.0.3.dmg
- Mount privafox-firefox-63.0.3.dmg 
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

