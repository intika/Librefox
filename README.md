# Privafox-Firefox
Tuning firefox settings (`about:config`) for a better security, privacy and performances. Firefox does not need to be rebuilt to be cleaned from privacy/security issues as all settings can be changed in the `about:config` 

This project aim to fix security/privacy issues related to firefox and also tune it to gain some speed performances. It uses `mozilla.cfg` and `policies.json` to have the changes applied to firefox...

Download :
----------

Official untouched mozilla builds with privafox integrated

- [`privafox-firefox-linux-63.0.3.tar.gz 57.3 MB`](https://github.com/intika/privafox-firefox/releases/download/v63.0.3/privafox-firefox-linux-63.0.3.tar.gz)

- [`privafox-firefox-windows-63.0.3.zip 61.2 MB`](https://github.com/intika/privafox-firefox/releases/download/v63.0.3/privafox-firefox-windows-63.0.3.zip)

Apply-it Manually :
-------------------
- Copy `mozilla.cfg` to `/firefox-install-dir/` and `local-settings.js` to `/firefox-install-dir/defaults/pref/` (if the directory does not exist create it)
- Copy `policies.json` to `/firefox-install-dir/distribution/` (if the directory does not exist create it)
- Setup the rest of the settings as you wish in `about:preferences` page  

Recommended addons :
--------------------

- [NoHTTP](https://addons.mozilla.org/en-US/firefox/addon/nohttp)
- [Cookie Master](https://addons.mozilla.org/en-US/firefox/addon/cookiemaster/)
- [HTTP Says Insecure](https://addons.mozilla.org/en-US/firefox/addon/http-says-insecure)
- [User Agent Platform Spoofer](https://addons.mozilla.org/en-US/firefox/addon/user-agent-platform-spoofer/)
- [Browser Plugs Privacy Firewall](https://addons.mozilla.org/en-US/firefox/addon/browser-plugs-privacy-firewall/)
- [uBock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) [+ IDCAC List](https://www.i-dont-care-about-cookies.eu/) [+ Nano Defender](https://github.com/LiCybora/NanoDefenderFirefox/releases/)

Performances :
--------------

Performance tests can be done here https://intika.github.io/lvp-octane/ bench need to be launched with other applications closed and with no other activity but the bunchmark, also the bunch need to be lunched at least 3 times (then make an average)

Infos :
-------

**Autor :** Intika - intikadev (at) gmail.com

**Donation :** Paypal : intikadev (at) gmail.com

**Site :** https://github.com/intika/privafox-firefox

**Based on :** [User.js](https://github.com/pyllyukko/user.js/), [PrivaConf](https://addons.mozilla.org/en-US/firefox/addon/privaconf/) and [Ghacks-user.js](https://github.com/ghacksuserjs/ghacks-user.js) big thanks to all of them

Documentation :
---------------

**`Mozilla.cfg`** : Locking firefox settings for security, privacy & prevent settings changes 

**`Policies.json`** : The policies.json is cross-platform compatible, making it preferred method for enterprise environments that have workstations running various operating systems (the settings availables with `policies.json` are limited right now because this is a new feature of firefox)

**`Section`** : Description of the settings section separated by "----"

**`Bench Diff`** : Impact on the performances of firefox can be a gain or loss of performance +100/5000 stand for 2% gained performance and -1500/5000 stand for -30% performance loss
               
**`Pref`** : Preference/Settings name

**`lockPref`** : Locked preference can not be changed on firefox, nor by extensions, can only be changed here
