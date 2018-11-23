# Privafox-Firefox
This project aim to fix security and privacy issues related to firefox without loosing speed performances. It uses `mozilla.cfg` and `policies.json`.

Features :
----------
Privafox uses [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) settings, additional performances settings and a cleaned bundle of firefox to provide :

- Performances 
- Security
- Privacy

Download :
----------
Official builds with privafox

- [Privafox-1.4-Firefox-Linux-63.0.3.tar.gz](https://github.com/intika/privafox-firefox/releases/download/Privafox-v1.4-v63.0.3/privafox-1.4-firefox-linux-63.0.3.tar.gz) - 57.3 MB - SHA1 : 004e2c3c9f03b00139e59a55f3b14565aa5e12d0 

- [Privafox-1.4-Firefox-Windows-63.0.3.zip](https://github.com/intika/privafox-firefox/releases/download/Privafox-v1.4-v63.0.3/privafox-1.4-firefox-win-63.0.3.zip) - 63.2 MB - SHA1 : d00539e04ef60082f57808cb79168b0f34f19186 

- [Privafox-1.4-Firefox-Mac-63.0.3.dmg](https://github.com/intika/privafox-firefox/releases/download/Privafox-v1.4-v63.0.3/privafox-1.4-firefox-mac-63.0.3.dmg) - 60.5 MB - SHA1 : ee559f78a801826db433615f0a1fb0f955783801

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
