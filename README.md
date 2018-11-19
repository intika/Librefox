# Privafox-Firefox
Tunning firefox settings (about:config) for a better security, privacy and performances, it is not needed to rebuilt firefox to clean it from privacy issues as all settings can be changed in the about:config this project aim to fix all security/privacy issues related to firefox and also tune it to gain some speed perfomances.   

It uses 'mozilla.cfg' and 'policies.json' to have the changes applied to firefox... ('prefs.js' can be used intead of 'mozilla.cfg' - you will need to replace 'lockPref' entries with 'user_pref')

**Mozilla.CFG :** Locking Firefox Settings For Security, Privacy & Prevent Settings Changes 

**Policies.json :** the policies.json is cross-platform compatible, making it preferred method for enterprise environments that have workstations running various operating systems

Apply-it :
----------
- Copy 'mozilla.cfg' to '/firefox-install-dir/' and 'local-settings.js' to '/firefox-install-dir/defaults/pref/' (if the directory does not exist create it)
- Copy 'policies.json' to '/firefox-install-dir/distribution/' (if the directory does not exist create it)

Currrent Verion :
-----------------
**Firefox v63.0.3**

Infos :
-------

**Autor :** Intika - intikadev (at) gmail.com

**Donation :** Paypal : intikadev (at) gmail.com

**Site :** https://github.com/intika/privafox-firefox

**Based on :** [User.js](https://github.com/pyllyukko/user.js/) and [PrivaConf](https://addons.mozilla.org/en-US/firefox/addon/privaconf/) thanks to : pyllyukko and honesty

Documentation :
---------------

**"SECTION" :** Description of the settings section separated by "----"

**"BENCH DIFF" :** Impact on the performances of firefox can be a gain or loss of performance +100/5000 stand for 2% gained performance and -1500/5000 stand for -30% performance loss
               
**Performance tests :** can be done here https://intika.github.io/octane/ bench need to be launched with other applications closed and with no other activity but the bunchmark, also the bunch need to be lunched at least 3 times (then make an average)
                                      
**"PREF" :** Preference/Settings name

**"lockPref" :** Locked preference can not be changed on firefox, nor by extensions, can only be changed here
