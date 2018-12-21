<p align="center">
<a href="https://github.com/intika/Librefox-Firefox/"><img width="727" src="https://img.shields.io/badge/Librefox-Firefox-lightgray.svg?logo=appveyor&longCache=true&style=popout"></a>
</p>
<p align="center">
<a href="https://github.com/intika/Librefox-Firefox/releases"><img src="https://img.shields.io/badge/Version-2.1--64.0-green.svg"></a> <a href="https://www.opendesktop.org/p/1275853/" target="_blank"><img src="https://img.shields.io/badge/Downloads-%20OpenDesktop-green.svg"></a> <a href="https://github.com/intika/Librefox-Firefox/commits/master"><img src="https://img.shields.io/badge/Maintained%20%3F-Yes-green.svg"></a> <a href="https://github.com/intika/Librefox-Firefox/pulls?q=is%3Apr+is%3Aclosed"><img src="https://img.shields.io/badge/PR-3-green.svg"></a> <a href="https://github.com/intika/Librefox-Firefox/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/badge/Solved%20Issues-12-green.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/2.0/" target="_blank"><img src="https://img.shields.io/badge/License-Mozilla--MLP2-blue.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/" target="_blank"><img src="https://badges.frapsoft.com/os/v2/open-source.png?v=103"></a>
</p>

---

Librefox : Mainstream Firefox With Freedom [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Librefox%2C%20mainstream%20firefox%20with%20a%20better%20privacy%20and%20security&url=https://github.com/intika/Librefox-Firefox&via=intika&hashtags=firefox,librefox,browser,privacy,developers)
----------------------------------------

This project aims to fix privacy and security issues related to Firefox without forking the project.

Librefox uses more than 500 privacy/security/performance settings ([gHacks](https://github.com/ghacksuserjs/ghacks-user.js) and additional options), patches, Librefox-Addons (optional) and a cleaned bundle of Firefox (updater, crashreporter and Firefox's integrated addons that don't respect privacy are removed).

Features :
----------

- Updated Firefox : because this project is not a fork, it is kept updated with the latest Firefox version.
- Extensions Firewall : limit internet access for extensions ([firewall-test-feature](https://github.com/intika/Librefox-Firefox/#extensions-firewall-))
- IJWY (I Just Want You To Shut Up) : embedded server links and other calling home functions are removed ([zero unauthorized connection by default](https://github.com/intika/Librefox-Firefox/#ijwy-i-just-want-you-to-shut-up-))
- Settings Protection : important settings are enforced/locked within `mozilla.cfg` and `policies.json`, those settings cannot be changed by addons/updates/Firefox or unwanted/accidental manipulation; To change those settings you can easily do it by editing `mozilla.cfg` and `policies.json`.
- Librefox Addons : set of optional Librefox extensions
- Statistics Disabled : telemetry and similar functions are disabled
- Tested Settings : settings are performance aware 
- ESR and Tor version (Librefox TBB Beta) 
- Tor Librefox Addons : adapted Librefox extensions for TBB 
- Multi-platform (Windows/Linux/Mac/and soon Android)
- Dark theme (classic and advanced)
- Recommended and *code reviewed* addons list
- Community-Driven
- And much more... 
---

Index :
-------
<pre>
<a href="https://github.com/intika/Librefox-Firefox/#features-"
>> Librefox : Features ............................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#download-"
>> Librefox : Download ............................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#capture-"
>> Librefox : Capture ................................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#librefox-addons-"
>> Addons : Librefox Addons .......................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#recommended-addons-"
>> Addons : Recommended Addons ....................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#recommended-addons-settings-"
>> Addons : Recommended Addons Settings .............................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#reviewing-extensions-code-"
>> Addons : Reviewing Addons Source Code ............................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#other-addons-"
>> Addons : Other Useful Addons Listing .............................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#extensions-firewall-"
>> Wiki : Extensions Network Firewall ................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#ijwy-i-just-want-you-to-shut-up-"
>> Wiki : IJWY (I Just Want You To Shut Up) .......................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#apply-librefox-manually-"
>> Wiki : Apply Librefox Manually .................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#edit-locked-settings-"
>> Wiki : Edit Locked Settings ....................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#settings-index-"
>> Wiki : Settings Index ............................................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#cookies-settings-"
>> Wiki : Cookies Settings ........................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#tracking-protection-"
>> Wiki : Tracking Protection ........................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#comparing-changes-and-updates-"
>> Wiki : Comparing Changes And Updates .............................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#documentation-"
>> Wiki : Documentation .............................................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#librefox-dark-theme-"
>> Wiki : Librefox Dark Theme ........................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#tuning-librefox--"
>> Wiki : Tuning Librefox ............................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#librefox-esr-"
>> Wiki : Librefox ESR ............................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#tor-compatibility-"
>> Wiki : Tor Compatibility .......................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#drm-compatibility-"
>> Wiki : DRM Compatibility .......................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#building-and-packaging-"
>> Wiki : Building And Packaging ..................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#browser-tests--securityfingerprint-"
>> Browser Tests : Security/Fingerprint .............................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#browser-tests--performances-"
>> Browser Tests : Performance ....................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#browser-tests--dnsvpnproxy-leak-"
>> Browser Tests : DNS/VPN/Proxy Leak ................................................ </a>
<a href="https://github.com/intika/Librefox-Firefox/#librefox-roadmap-"
>> Infos : Librefox Roadmap .......................................................... </a>
<a href="https://github.com/intika/Librefox-Firefox/#changelog-"
>> Infos : Changelog ................................................................. </a>
<a href="https://github.com/intika/Librefox-Firefox/#about-"
>> Infos : About ..................................................................... </a>
</pre>

Download :
----------
Official builds with Librefox.

**Linux :**

- [Librefox-2.1-Firefox-Linux-64.0.0-x64.tar.xz](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-64.0.0-x64.tar.xz) - 45.1 MB - SHA1 : 1d25c606e08e6ad2e674abf3032255902067a81d

- [Librefox-2.1-Firefox-Linux-64.0.0-x32.tar.xz](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-64.0.0-x32.tar.xz) - 47.1 MB - SHA1 : 531ec9b6e1e763d7e13f6b7ce96640c26b7a85f5

- [Librefox-2.1-Firefox-Linux-60.4.0-x64-ESR.tar.xz](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-60.4.0-x64-ESR.tar.xz) - 40.3 MB - SHA1 : 1522f48aaf6189021beb6cbad0e4875c75e6e9c0

- [Librefox-2.1-Firefox-Linux-60.4.0-x32-ESR.tar.xz](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-60.4.0-x32-ESR.tar.xz) - 42.2 MB - SHA1 : 9b1608a1c96ac71942b71b012d960f1958a23c24

- [Librefox-2.1-Tor-Linux-v8.0.4-x64-Beta.tar.xz](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Linux-v8.0.4-x64-Beta.tar.xz) - 71.6 MB - SHA1 : de33e586c2701fc62e023081af0d51c7829efc26

- [Librefox-2.1-Tor-Linux-v8.0.4-x32-Beta.tar.xz](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Linux-v8.0.4-x32-Beta.tar.xz) - 73.0 MB - SHA1 : 970628ef040eff3122a4e869ce3db6ffb2a060f5

**Mac :**

- [Librefox-2.1-Firefox-Mac-64.0.0-x64.dmg](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Mac-64.0.0-x64.dmg) - 67.3 MB - SHA1 : 3193c77f86aa1344de5430be8d5aeb304e3be10e

- [Librefox-2.1-Firefox-Mac-60.4.0-x64-ESR.dmg](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Mac-60.4.0-x64-ESR.dmg) - 57.7 MB - SHA1 : 0435746f1a41e699ee586f651e54974ae0e9044b

- [Librefox-2.1-Tor-Linux-v8.0.4-x64-Beta.dmg](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Linux-v8.0.4-x32-Beta.dmg) - 64.1 MB - SHA1 : 42047b39ecdb188552a36450adba058247a86edc

**Windows :**

- [Librefox-2.1-Firefox-Win-64.0.0-x64.zip](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Win-64.0.0-x64.zip) - 60.8 MB - SHA1 : 0fe4804e99b6147a00ff83f1f99d1ba09663c7ca

- [Librefox-2.1-Firefox-Win-64.0.0-x32.zip](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Win-64.0.0-x32.zip) - 58.3 MB - SHA1 : 721da788f47701b2ae3d1de13d91efc01ffa990e

- [Librefox-2.1-Firefox-Win-60.4.0-x64-ESR.zip](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Win-60.4.0-x64-ESR.zip) - 51.1 MB - SHA1 : 333eff737a31cd0791bd758e9adfc6f1401e1091

- [Librefox-2.1-Firefox-Win-60.4.0-x32-ESR.zip](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Win-60.4.0-x32-ESR.zip) - 47.6 MB - SHA1 : 80c4c6e8351a7cc03f6b290aa26d68d89cbeedc7

- [Librefox-2.1-Tor-Win-v8.0.4-x64-Beta.zip](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Win-v8.0.4-x64-Beta.zip) - 66.3 MB - SHA1 : 0b36604d01b480044de9be730b6bc59fb58b293f

- [Librefox-2.1-Tor-Win-v8.0.4-x32-Beta.zip](https://github.com/intika/Librefox-Firefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Win-v8.0.4-x32-Beta.zip) - 69.2 MB - SHA1 : 2180f4d9d8afeeff4c50a3fe74b6df89281b2d3b

Capture :
---------
<p align="center">
  <img width="650" src="https://raw.githubusercontent.com/intika/Librefox-Firefox/master/capture.png">
</p>

Librefox Addons :
-----------------
Librefox addons are not bundled and need to be installed manually

- [Librefox Dark Theme](https://addons.mozilla.org/en-US/firefox/addon/librefox-dark-theme/) : Dark theme
- [Librefox HTTP Watcher](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-red-flag/) : Change the url bar color on HTTP sites  
- [Librefox Reload Button](https://addons.mozilla.org/en-US/firefox/addon/librefox-reload-button-url-bar/) : Add a reload button to URL bar

Recommended Addons :
--------------------
Recommended addons are not bundled and need to be installed manually

- [Cookie Master](https://addons.mozilla.org/en-US/firefox/addon/cookiemaster/) : Block all cookies and only allow authorized sites 
- [First Party Isolation](https://addons.mozilla.org/en-US/firefox/addon/first-party-isolation/) : Enable/Disable FPI with the click of a button
- [User Agent Platform Spoofer](https://addons.mozilla.org/en-US/firefox/addon/user-agent-platform-spoofer/) : Spoof a different UserAgent OS Linux/Windows/Mac
- [Browser Plugs Privacy Firewall](https://addons.mozilla.org/en-US/firefox/addon/browser-plugs-privacy-firewall/) : Sets of settings to prevent fingerprinting and security issues
- [uBock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) [+ IDCAC List](https://www.i-dont-care-about-cookies.eu/) [+ Nano-Defender List](https://jspenguin2017.github.io/uBlockProtector/#extra-installation-steps-for-ublock-origin) : Block web advertisement and tracking 

Recommended Addons Settings :
-----------------------------
`uBlock` : Additional filters are availables here: https://filterlists.com/ (don't surcharge it to avoid performance loss)

`Browser Plugs Privacy Firewall` : Keep settings light to make `privacy.resistFingerprinting` efficient because too much customization will lead to uniqueness and therefore easy fingerprinting. 
```
  - Privacy / Fingerprint / Fake values for getClientRects
  - Privacy / Fingerprint / Randomize Canvas Fingerprint
  - Privacy / Fingerprint / 100% Randomize ALL Fingerprint Hash
  - Firewall / Experimental / Block SVG getBBox and getComputedTextLength
  - Privacy / Font / Randomize
  - Privacy / Font / Enable protection for font and glyph fingerprinting
```
Reviewing Extensions Code :
---------------------------
Recommended extensions code have been reviewed for potential unwanted behaviour... reviewed version are available under [extensions](https://github.com/intika/Librefox-Firefox/tree/master/extensions) directory.

Extensions Firewall :
---------------------
**Description :**

*This is a test experiment feature and it is disabled by default !!!* A new section `Extensions Manager` is added to manage addons globally (and addons networking in the subsection `Extensions Firewalling`). Firewalling the network for addons is doable, but it requires a considerable amount of additional work in Librefox to make it usable through a button or in a per addon basis (this may or may not be added in a future version, it also could be abandoned as it is a test feature). Currently you can block a list of domains or block the whole network for all the extensions.

**Quickly Enable It :**

To enable the feature and block the network for all the extensions open `mozilla.cfg` search for `Enable-Firewall-Feature-In-The-Next-Line` and remove the `//` in the next line

**The Settings :**

Available native network restriction settings for addons :

- Restricted domains list : `extensions.webextensions.restrictedDomains` this is a list of restricted domains that will be used to block some hosts for all the extensions, Firefox uses this setting to block extensions from accessing mozilla's domains/sites, by default in Librefox this setting is set to allow extensions to access all the web (You can edit that list to match your needs or to block a specific domain, note that the domain name has to be 'exact' (for instance facebook.com will only block facebook.com not mobile.fabcebook.com) 
- Content security policy : `extensions.webextensions.base-content-security-policy` and `extensions.webextensions.default-content-security-policy` the later settings can be redefined/changed within an extension so it's not efficient for a firewall purpose. CSP settings are used in Firefox as an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement to distribution of malware; In short: CSP settings block and allow certain domains under certain circumstances and thus could be used to firewall the extensions ([CSP Documentations](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP), its [sources code](https://code.compassfoundation.io/general/mozilla-central/commit/623a4f866576815dfcbab26323d13b7144806bdf?view=inline&w=1) and [implementation](https://github.com/mozilla/gecko/blob/central/toolkit/components/extensions/ExtensionPolicyService.cpp))

**Wiki - Blocking a domain :**

Edit the restricted domains setting as follow under the `about:config` page :

- Restricted Domains Setting : `extensions.webextensions.restrictedDomains` Value : `ExactDomains1,ExactDomains2,ExactDomains3` etc.
    
**Wiki - Blocking the network :**

Note that this will block the network access for all the extensions and a lot of extensions needs to be connected in order to work. In the current version of Librefox you can block the network for all the extensions or allow it for all of them, a future version may provide additional features like "per addon" setting (By default Librefox allows networking for extensions).

To block or allow the network access for the extensions change the following settings according to your needs in `about:config` :

- Block : CSP Setting : `extensions.webextensions.base-content-security-policy` Value : `extensions.webextensions.base-content-security-policy", "default-src 'self' moz-extension: blob: filesystem: 'unsafe-eval' 'unsafe-inline'; script-src 'self' moz-extension: blob: filesystem: 'unsafe-eval' 'unsafe-inline'; object-src 'self' moz-extension: blob: filesystem:;`
- Allow : CSP Setting : `extensions.webextensions.base-content-security-policy` Value : default (right click and reset)

**Wiki - More infos :**

Check `debug-check-todo.log` for additional info about future version and researches about the subject. Also check [CSP Documentations](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP), its [sources code](https://code.compassfoundation.io/general/mozilla-central/commit/623a4f866576815dfcbab26323d13b7144806bdf?view=inline&w=1) and [implementation](https://github.com/mozilla/gecko/blob/central/toolkit/components/extensions/ExtensionPolicyService.cpp)

IJWY (I Just Want You To Shut Up) :
-----------------------------------
This is a set of settings that aim to remove all the server links embedded in Firefox and other calling home functions in the purpose of blocking un-needed connections. The objective is zero unauthorized connection (ping/telemetry/Mozilla/Google...).

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
- Delete the following files:
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
Just edit `mozilla.cfg`, save and restart Librefox.

Browser Tests : Security/Fingerprint : 
----------------------------------------------
Firefox 60 and `privacy.resistFingerprinting` are relatively new, please give it some time to be more widely used and thus less finger-printable; If you are using a different site to analyze your browser make sure to read and understand what the test is about.

- [SSLLabs](https://www.ssllabs.com/ssltest/viewMyClient.html)
- [AmiUnique](https://amiunique.org/fp)
- [BrowserLeaks](https://browserleaks.com/)
- [BrowserPlugs](https://www.browserplugs.com/fingerprint-test/index.html)
- [FingerPrintJS2](https://valve.github.io/fingerprintjs2/)
- [Third-Party-Cookies](https://alanhogan.github.io/web-experiments/3rd/third-party-cookies.html)
- [Testing-Notifications](https://www.bennish.net/web-notifications.html)
- [Browser-Storage-Abuser](https://demo.agektmr.com/storage/)
- [Service-Workers-Push-Test](https://gauntface.github.io/simple-push-demo/)

Browser Tests : Performances :
------------------------------
Performance tests can be done here [LVP Octane](https://intika.github.io/lvp-octane/), it needs to be launched alone with other applications closed and with no other activity but the benchmark, also it's recommended to launch it many times and then calculate the average.

Browser Tests : DNS/VPN/Proxy Leak :
------------------------------------
- [IPLeak](https://ipleak.net/)
- [Tenta-Test](https://tenta.com/test/)
- [IP-Browserleaks](https://browserleaks.com/ip)

About :
-------
**Author :** Intika - intikadev (at) gmail.com

**Donation :** Paypal : intikadev (at) gmail.com

**Based on :** [User.js](https://github.com/pyllyukko/user.js/), [PrivaConf](https://addons.mozilla.org/en-US/firefox/addon/privaconf/) and [Ghacks-user.js](https://github.com/ghacksuserjs/ghacks-user.js) big thanks to everyone.

**Contributors :** @Thorin-Oakenpants @claustromaniac @earthlng @brainscar @Eloston @dimqua @pyllyukko @anchev @antuketot76 big thanks to everyone (and all others i forget to mention).

Librefox Roadmap : 
------------------
**Objectives for future versions of Librefox (this may change) :**
- Develop an all-in-one Librefox addon to rule them all ? (Normal & Tor Version… this would simplify Librefox)
- Develop an easy to use firewall system for extensions (button/hosts/allow/deny/per-addon)
- Update checker extension (feature in the full extension ?)
- Advertisement for the project to reach more users ?

**Todo for future versions of Librefox (this may change) :**
- Improve HD-video playback performance
- Testing compatibility on those [sites](https://developer.mozilla.org/en-US/docs/Web/Demos_of_open_web_technologies) and adjust the related settings.
- Review un-reviewed addons code (dont-track-me-google/decentraleyes/canvasblocker/temporary-containers/switch-container/smart-referer)

Settings Index :
----------------
```
// ==============================
// Index mozilla.cfg .......... :
// ==============================
//
// -----------------------------------------------------------------------
// Section : User settings                    // Bench Diff : +0    / 5000
// Section : Defaulting Settings              // Bench Diff : +0    / 5000
// -------------------------------------------
// Section : Controversial                    // Bench Diff : +0    / 5000
// Section : Firefox Fingerprint              // Bench Diff : +0    / 5000
// Section : Locale/Time                      // Bench Diff : +0    / 5000
// Section : Ghacks-user Selection            // Bench Diff : +100  / 5000
// Section : Extensions Manager               // Bench Diff : +0    / 5000
// Section : IJWY To Shut Up                  // Bench Diff : +0    / 5000
// Section : Microsoft Windows                // Bench Diff : +0    / 5000
// Section : Firefox ESR60.x                  // Bench Diff : +0    / 5000
// -------------------------------------------
// Section : Security 1/3                     // Bench Diff : +0    / 5000
// Section : Security 2/3                     // Bench Diff : +0    / 5000
// Section : Security 3/3 (Cipher)            // Bench Diff : +0    / 5000
// -------------------------------------------
// Section : Performance 1/5                  // Bench Diff : +650  / 5000
// Section : Performance 2/5                  // Bench Diff : -800  / 5000
// Section : Performance 3/5                  // Bench Diff : -1720 / 5000
// Section : Performance 4/5                  // Bench Diff : -200  / 5000 
// Section : Performance 5/5                  // Bench Diff : -50   / 5000 
// -------------------------------------------
// Section : General Settings 1/3             // Bench Diff : +100  / 5000
// Section : General Settings 2/3             // Bench Diff : +0    / 5000
// Section : General Settings 3/3             // Bench Diff : -40   / 5000
// -------------------------------------------
// Section : Disabled - ON/OFF                // Bench Diff : +0    / 5000
// Section : Disabled - Deprecated Active     // Bench Diff : +0    / 5000
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

Cookies Settings :
------------------
Using different web services without cookies is impossible and cookie settings in a browser are very important when it come to privacy, in Librefox the settings are locked to avoid unwanted changes in such an important setting, but they can be easily changed in `mozilla.cfg` under `User Settings : Cookies settings`.

Tracking Protection :
---------------------
Firefox now integrates a tracking protection feature (based on disconnect.me) it's a small content blocking list, the listing can not be edited, this feature is disabled in Librefox. It's recommended to use uBlock Origin instead. This feature is disabled :

- Until it evolves and integrates at least list editing.
- Because double filtering (this + ublock) is not suitable for performance.

You can however easily enable this feature in `mozilla.cfg` under `User Settings : Track Protection` (just comment active lines with `//` or remove the entire section).

Comparing Changes And Updates :
-------------------------------
If you want to compare changes over updates or if you already have a `user.js`/`mozilla.cfg`/`policies.json`. consider using [Compare-UserJS](https://github.com/claustromaniac/Compare-UserJS), it's an amazing tool to compare user.js files and output the diffs in detailed breakdown, developed by gHack's very own resident cat, [claustromaniac](https://github.com/claustromaniac) :cat:

Usage : If not on windows install [PowerShell](https://github.com/PowerShell/PowerShell) then (for example) `pwsh Compare-UserJS.ps1 mozilla.cfg user.js` (Warning that PowerShell connects to Microsoft sometimes)

Documentation :
---------------

**Local-settings.js** : Defaulting Firefox settings 

**Mozilla.cfg** : Locking Firefox settings for security, privacy & prevent setting changes 

**Policies.json** : The policies.json is cross-platform compatible, making it preferred method for enterprise environments that have workstations running various operating systems (the settings availables with `policies.json` are limited right now because this is a new feature of Firefox)

**Bench diff** : Impact on the performance of Firefox can be a gain or a loss of performance +100/5000 stand for 2% gained performance and -1500/5000 stand for -30% performance loss
               
**lockPref** : Locked preference can not be changed on Firefox, nor by extensions, they can only be changed here.

**Section** : Description of the settings section separated by ">>>..."

**Defaulting VS Enforcing** : Default settings value are changed in `local-settings.js` and enforced settings are changed in `mozilla.cfg`, defaulted settings can be changed by the user in the browser while enforced settings are locked and can not be changed within the browser.

**About:config** : http://kb.mozillazine.org/About:config_entries

Librefox Dark Theme :
---------------------
Librefox provides a classic dark theme extension ([Librefox Dark Theme](https://addons.mozilla.org/en-US/firefox/addon/librefox-dark-theme/)) but also a purified version of ShadowFox available under [dark-theme directory](https://github.com/intika/Librefox-Firefox/tree/master/dark-theme) to install it just copy the directory chrome to your Firefox profile directory and then reboot Firefox, this will expand the dark theme to internal pages like settings pages.

Tuning Librefox :
------------------

**Restart Button :**

One simple solution is to bookmark `about:restartrequired` or `about:profiles` ... when restart is needed open that page and click "normal restart". You can even go further and add the bookmarks links to your icons bar and rename the link to an empty text (you will then have a direct icon to `about:profiles` and a 2 clicks reboot)

![capture](https://user-images.githubusercontent.com/6892180/48963055-bd914000-ef82-11e8-8ea4-a58e56f5c4a4.png)
... 

**Alternative Dark Theme :**

<a href="https://github.com/overdodactyl/ShadowFox" target="_blank"><img height=80px src="https://raw.githubusercontent.com/overdodactyl/ShadowFox/master/.github/Screenshots/header.png"></a>

**Linux Fix Text Colors :**

On Linux when using a dark desktop theme Firefox could display white text over white background or black text on black input on some sites or addons, this is fixed in Librefox with `lockPref("ui.use_standins_for_native_colors", true);`.

If `ui.use_standins_for_native_colors` is not enough to fix everything you can fix this issue with an other additional solution by using the following values in `about:config` (you need to have Adwaita theme installed) [more details](https://github.com/DmitriK/darkContrast#text-contrast-for-dark-themes) (Note that this is not needed with the default Librefox settings as it is already fixed)
```
widget.content.allow-gtk-dark-theme;false
widget.chrome.allow-gtk-dark-theme;false
widget.content.gtk-theme-override;Adwaita:light
```

Other Addons :
--------------

**Other privacy addons :**
- [NoHTTP](https://addons.mozilla.org/en-US/firefox/addon/nohttp) : Block http traffic and/or redirect it to https (Excellent remplacment for the unrecommended https-everywhere)
- [Google-Container](https://addons.mozilla.org/en-US/firefox/addon/google-container/) : Open all Google sites in a container
- [Facebook-Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/) : Open all Facebook sites in a container
- [Request-Blocker](https://addons.mozilla.org/en-US/firefox/addon/request-blocker-we/) : Hosts style blocking sites
- [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/) : Makes a lot of web resources available locally to improve privacy 
- [Dont-Track-Me-Google](https://addons.mozilla.org/en-US/firefox/addon/dont-track-me-google1/) : Cleaning Google search result links  
- [Canvas-Blocker](https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/) : Prevent some fingerprinting techniques (This should not be used with browser plugins addon as it provide similar features)  
- [Cookie-Quick-Manager](https://addons.mozilla.org/en-US/firefox/addon/cookie-quick-manager/) : View and edit cookies
- [Mozilla-Multi-Account-Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/) : Manage containers and assign sites to specific container
- [Switch-Containers](https://addons.mozilla.org/en-US/firefox/addon/switch-container/) : Switching container for the current tab easily
- [Temporary-Containers](https://addons.mozilla.org/en-US/firefox/addon/temporary-containers/) : Maximizing and automating container potential 
- [Smart-Referer](https://addons.mozilla.org/en-US/firefox/addon/smart-referer/) : Manage referer with a button (Send referers only when staying on the same domain.)

**Other useful addons :**
- [Dormancy](https://addons.mozilla.org/en-US/firefox/addon/dormancy/) : Unload tab after a certain time, useful for performance when opening a lot of tabs 
- [Add Custom Search Engine](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/) : Customize your search engine 
- [ProxySwitcheroo](https://addons.mozilla.org/en-US/firefox/addon/proxyswitcheroo/) : Apply proxy settings in a click
- [UndoCloseTabButton](https://addons.mozilla.org/en-US/firefox/addon/undoclosetabbutton/) : Reopen last closed tab
- [Advanced Github Notifier](https://addons.mozilla.org/en-US/firefox/addon/advanced-github-notifier/) : Github notifications
- [Shortkeys](https://addons.mozilla.org/en-US/firefox/addon/shortkeys/) : Add custom shortkeys
- [Tabboo](https://addons.mozilla.org/en-US/firefox/addon/tabboo-session-manager/) : Session manager

**Librefox Addons For ESR And Tor :**
- [Librefox HTTP Watcher ESR - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-tor-mod/) : Change the url bar color on http and onion sites (to green/red)
- [Librefox NoHTTP - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/nohttp-librefox-mod-for-tor/) : Block http traffic and/or redirect it to https (Excellent replacement for the unrecommended https-everywhere)

Tor Compatibility :
-------------------
Same as [gHacks](https://github.com/ghacksuserjs/ghacks-user.js) recommendations, we do not recommend connecting over Tor on Librefox. Use the Tor Browser if your threat model calls for it, or for accessing hidden services (Thus said tor settings have been enabled in v2 for user toriffying/proxifying their entire connection).

Currently Librefox-TBB is in beta test, Tor compatibility may change. 

DRM Compatibility :
-------------------
Digital rights management (DRM) is enforced off by default (this is needed for Netflix and similar); you can enable it with the following instructions :
- Open `mozilla.cfg`
- Under the section `Section : User Settings`
- Comment the active lines with `// ` under the subsection `User Settings : DRM/CDM - Main`
- Comment the active lines with `// ` under the subsection `User Settings : DRM/CDM - Widevine`
- Restart Firefox then open `about:preferences` and enable `Play DRM...` under general section
- Firefox will download Widevine and enable it (under `about:addons` plugins section) you can force the download by clicking `Check for updates` under the tools button

Librefox ESR :
--------------
For ESR users if you opt for `Librefox HTTP Watcher` you need to use this version [Librefox HTTP Watcher ESR - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-tor-mod/)

Building And Packaging :
------------------------
Librefox is applied to a built version of Firefox, you can [build it](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Build_Instructions) or use the [version provided by mozilla](https://ftp.mozilla.org/pub/firefox/releases/63.0.3/)

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



