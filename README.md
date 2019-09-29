<p align="center">
<a href="https://github.com/intika/Librefox/"><img width="727" src="https://img.shields.io/badge/Librefox-Browser-lightgray.svg?logo=appveyor&longCache=true&style=popout"></a>
</p>
<p align="center">
<a href="https://www.opendesktop.org/p/1275853/" target="_blank"><img src="https://img.shields.io/badge/Download-%20Librefox-green.svg"></a> <a href="https://github.com/intika/Librefox/releases"><img src="https://img.shields.io/badge/Version-2.1--64.0-green.svg"></a> <a href="https://github.com/intika/Librefox/commits/master"><img src="https://img.shields.io/badge/Maintained-Yes-green.svg"></a> <a href="https://github.com/intika/Librefox/pulls"><img src="https://img.shields.io/badge/PR-9-green.svg"></a> <a href="https://github.com/intika/Librefox/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/badge/Solved%20Issues-49-green.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/2.0/" target="_blank"><img src="https://img.shields.io/badge/License-Mozilla--MLP2-blue.svg"></a> <a href="https://www.mozilla.org/en-US/MPL/" target="_blank"><img src="https://badges.frapsoft.com/os/v2/open-source.png?v=103"></a>
</p>

---

Librefox: Browse With Freedom [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Librefox%2C%20browse%20with%20freedom&url=https://github.com/intika/Librefox&via=intika&hashtags=firefox,librefox,browser,privacy,developers)
------------------------------

This project aims at enforcing privacy and security of Firefox without forking the project.

Librefox uses more than 500 privacy/security/performance settings, patches, Librefox-Addons (optional) and a cleaned bundle of Firefox (updater, crashreporter and Firefox's integrated addons that don't respect privacy are removed).

**Librefox is NOT associated with Mozilla or its products.**

Features
--------

- Updated browser: because this project is not a fork, it is kept updated with the latest Firefox version.
- Extensions firewall: limit internet access for extensions ([firewall-test-feature](#extensions-firewall))
- IJWY (I Just Want You To Shut Up): embedded server links and other calling home functions are removed ([zero unauthorized connection](#ijwy-i-just-want-you-to-shut-up) by default).
- User settings updates: gHacks/pyllyukko base is kept up to date.
- Settings protection: important settings are enforced/locked within `mozilla.cfg` and `policies.json`, those settings cannot be changed by addons/updates/Firefox or unwanted/accidental manipulation; To change those settings you can easily do it by editing `mozilla.cfg` and `policies.json`.
- Librefox-addons: set of optional Librefox extensions
- Statistics disabled: telemetry and similar functions are disabled
- Tested settings: settings are performance aware
- ESR and Tor version (Librefox TBB Beta)
- Tor Librefox-addons: adapted Librefox extensions for TBB
- Multi-platform (Windows/Linux/Mac/and soon Android)
- Dark theme (classic and advanced)
- Recommended and *code reviewed* addons list
- Community-Driven
- And much more...
---

Index
-----
<pre>
<a href="#features"
>> Librefox: Features ............................................................... </a>
<a href="#download"
>> Librefox: Download ............................................................... </a>
<a href="#capture"
>> Librefox: Capture ................................................................ </a>
<a href="#librefox-addons"
>> Addons: Librefox Addons .......................................................... </a>
<a href="#recommended-addons"
>> Addons: Recommended Addons ....................................................... </a>
<a href="#recommended-addons-settings"
>> Addons: Recommended Addons Settings .............................................. </a>
<a href="#reviewing-extensions-code"
>> Addons: Reviewing Addons Source Code ............................................. </a>
<a href="#other-addons"
>> Addons: Other Useful Addons Listing .............................................. </a>
<a href="#installation-instructions"
>> Wiki: Installation Instructions .................................................. </a>
<a href="#extensions-firewall"
>> Wiki: Extensions Network Firewall ................................................ </a>
<a href="#ijwy-i-just-want-you-to-shut-up"
>> Wiki: IJWY (I Just Want You To Shut Up) .......................................... </a>
<a href="#edit-locked-settings"
>> Wiki: Edit Locked Settings ....................................................... </a>
<a href="#settings-index"
>> Wiki: Settings Index ............................................................. </a>
<a href="#cookies-settings"
>> Wiki: Cookies Settings ........................................................... </a>
<a href="#tracking-protection"
>> Wiki: Tracking Protection ........................................................ </a>
<a href="#comparing-changes-and-updates"
>> Wiki: Comparing Changes And Updates .............................................. </a>
<a href="#documentation"
>> Wiki: Documentation .............................................................. </a>
<a href="#librefox-dark-theme"
>> Wiki: Librefox Dark Theme ........................................................ </a>
<a href="#tuning-librefox"
>> Wiki: Tuning Librefox ............................................................ </a>
<a href="#librefox-esr"
>> Wiki: Librefox ESR ............................................................... </a>
<a href="#tor-compatibility"
>> Wiki: Tor Compatibility .......................................................... </a>
<a href="#drm-compatibility"
>> Wiki: DRM Compatibility .......................................................... </a>
<a href="#building-and-packaging"
>> Wiki: Building And Packaging ..................................................... </a>
<a href="#browser-tests---securityfingerprint"
>> Browser Tests: Security/Fingerprint .............................................. </a>
<a href="#browser-tests---performances"
>> Browser Tests: Performance ....................................................... </a>
<a href="#browser-tests---dnsvpnproxy-leak"
>> Browser Tests: DNS/VPN/Proxy Leak ................................................ </a>
<a href="#librefox-roadmap"
>> Infos: Librefox Roadmap .......................................................... </a>
<a href="#changelog"
>> Infos: Changelog ................................................................. </a>
<a href="#about"
>> Infos: About ..................................................................... </a>
</pre>

Download
--------

**Important notice: this is a temporary version**, awaiting a correct build of the project, Librefox is distributed as a configuration files for Firefox. To apply Librefox configuration to Firefox extract the compressed file to Firefox's installation directory ([detailed installation instructions](#installation-instructions)). **Future Librefox version** will have its own trademark and therefore solve this [issue](https://github.com/intika/Librefox/issues/55).

**Linux**

- [Librefox-2.1-Firefox-Linux-64.0.0.zip](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-64.0.0.zip) - 40.0 KB - SHA1: a6f36d4c55c096f7e67c7cbf500ebb0fca9a0d2a

- [Librefox-2.1-Tor-Linux-v8.0.4-Beta.zip](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Linux-v8.0.4-Beta.zip) - 62.3 KB - SHA1: 43fe17592565bb2c5802dd48c9746a3f12d7dd1a

**Windows**

- [Librefox-2.1-Windows-64.0.0.zip](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Windows-64.0.0.zip) - 40.0 KB - SHA1: a0fba18cc79c95bde483fdb7cd91c1171bc5b7bf

- [Librefox-2.1-Tor-Windows-v8.0.4-Beta.zip](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Windows-v8.0.4-Beta.zip) - 62.3 KB - SHA1: c72787e009d1a264ae53f4d76d0ffc464cfef7eb

**Mac**

- [Librefox-2.1-Mac-60.4.0.zip](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Mac-60.4.0.zip) - 40.0 KB - SHA1: 467e56a4fcf4e99a1a66377d9f0221cdcd748748

- [Librefox-2.1-Tor-Mac-v8.0.4.zip](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Tor-Mac-v8.0.4-Beta.zip) - 60.7 KB - SHA1: 4c3d848d6d43e28ad7ddfb3d3e2e26ca590c950b


Capture
-------
<p align="center">
  <img width="650" src="https://raw.githubusercontent.com/intika/Librefox/master/capture.png">
</p>

Librefox Addons
---------------
Librefox addons are not bundled and need to be installed manually

- [Librefox Dark Theme](https://addons.mozilla.org/en-US/firefox/addon/librefox-dark-theme/): Dark theme
- [Librefox HTTP Watcher](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-red-flag/): Change the url bar color on HTTP sites
- [Librefox Reload Button](https://addons.mozilla.org/en-US/firefox/addon/librefox-reload-button-url-bar/): Add a reload button to URL-bar instead of the toolbar

Recommended Addons
------------------
Recommended addons are not bundled and need to be installed manually

- [Cookie Master](https://addons.mozilla.org/en-US/firefox/addon/cookiemaster/): Block all cookies and only allow authorized sites
- [First Party Isolation](https://addons.mozilla.org/en-US/firefox/addon/first-party-isolation/): Enable/Disable FPI with the click of a button
- [User Agent Platform Spoofer](https://addons.mozilla.org/en-US/firefox/addon/user-agent-platform-spoofer/): Spoof a different UserAgent OS Linux/Windows/Mac
- [Browser Plugs Privacy Firewall](https://addons.mozilla.org/en-US/firefox/addon/browser-plugs-privacy-firewall/): Sets of settings to prevent fingerprinting and security issues
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) [+ IDCAC List](https://www.i-dont-care-about-cookies.eu/) [+ Nano-Defender List](https://jspenguin2017.github.io/uBlockProtector/#extra-installation-steps-for-ublock-origin): Block web advertisement and tracking

Recommended Addons Settings
---------------------------
`uBlock Origin`: Additional filters are availables here: https://filterlists.com/ (don't surcharge it to avoid performance loss)

`Browser Plugs Privacy Firewall`: Keep settings light to make `privacy.resistFingerprinting` efficient because too much customization will lead to uniqueness and therefore easy fingerprinting.
```
  - Privacy / Fingerprint / Fake values for getClientRects
  - Privacy / Fingerprint / Randomize Canvas Fingerprint
  - Privacy / Fingerprint / 100% Randomize ALL Fingerprint Hash
  - Firewall / Experimental / Block SVG getBBox and getComputedTextLength
  - Privacy / Font / Randomize
  - Privacy / Font / Enable protection for font and glyph fingerprinting
```
Reviewing Extensions Code
-------------------------
Recommended extensions code have been reviewed for potential unwanted behaviour... reviewed version are available under [extensions](https://github.com/intika/Librefox/tree/master/extensions) directory.

Extensions Firewall
-------------------
**Extensions Firewall - Description**

*This is a test experiment feature and it is disabled by default !!!* A new section `Extensions Manager` is added to manage addons globally (and addons networking in the subsection `Extensions Firewalling`). Firewalling the network for addons is doable, but it requires a considerable amount of additional work in Librefox to make it usable through a button or in a per addon basis (this may or may not be added in a future version, it also could be abandoned as it is a test feature). Currently you can block a list of domains or block the whole network for all the extensions.

**Extensions Firewall - The Settings**

Available native network restriction settings for addons:

- Restricted domains list: `extensions.webextensions.restrictedDomains` this is a list of restricted domains that will be used to block some hosts for all the extensions, Firefox uses this setting to block extensions from accessing mozilla's domains/sites, by default in Librefox this setting is set to allow extensions to access all the web (You can edit that list to match your needs or to block a specific domain, note that the domain name has to be 'exact' (for instance facebook.com will only block facebook.com not mobile.facebook.com)
- Content security policy: `extensions.webextensions.base-content-security-policy` and `extensions.webextensions.default-content-security-policy` the later settings can be redefined/changed within an extension so it's not efficient for a firewall purpose. CSP settings are used in Firefox as an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement to distribution of malware; In short: CSP settings block and allow certain domains under certain circumstances and thus could be used to firewall the extensions ([CSP Documentations](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP), its [sources code](https://code.compassfoundation.io/general/mozilla-central/commit/623a4f866576815dfcbab26323d13b7144806bdf?view=inline&w=1) and [implementation](https://github.com/mozilla/gecko/blob/central/toolkit/components/extensions/ExtensionPolicyService.cpp))

**Extensions Firewall - Blocking A Domain**

Edit the restricted domains setting as follow under the `about:config` page:

- Restricted Domains Setting: `extensions.webextensions.restrictedDomains` Value: `ExactDomains1,ExactDomains2,ExactDomains3` etc.

**Extensions Firewall - Blocking The Network**

To enable the feature and block the network for all the extensions open `mozilla.cfg` search for `Enable-Firewall-Feature-In-The-Next-Line` and remove the `//` in the next line.

Note that this will block the network access for all the extensions and a lot of extensions needs to be connected in order to work. In the current version of Librefox you can block the network for all the extensions or allow it for all of them, a future version may provide additional features like "per addon" setting (By default Librefox allows networking for extensions).

**Extensions Firewall - More Infos**

Check `debug-notes.log` for additional info about future version and researches about the subject. Also check [CSP Documentations](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP), its [sources code](https://code.compassfoundation.io/general/mozilla-central/commit/623a4f866576815dfcbab26323d13b7144806bdf?view=inline&w=1) and [implementation](https://github.com/mozilla/gecko/blob/central/toolkit/components/extensions/ExtensionPolicyService.cpp).

IJWY (I Just Want You To Shut Up)
---------------------------------
This is a set of settings that aim to remove all the server links embedded in Firefox and other calling home functions in the purpose of blocking un-needed connections. The objective is zero unauthorized connection (ping/telemetry/Mozilla/Google...).

Changelog
---------
Available in the [releases page](https://github.com/intika/Librefox/releases)

Installation Instructions
--------------------------
**Notice:** in the current state of the project Librefox is a set of configuration files for Firefox (awaiting a correct build of the project), therefore if you already have a Firefox profile, that profile will be used and temporary files will be removed (cookies and current session), make sure to backup your current Firefox's profile before using Librefox.
Using Librefox simultaneously with Firefox is possilbe through a different profile you can follow [this wiki](https://www.ghacks.net/2008/05/29/run-multiple-firefox-profiles-simultaneously/) to do so. **[Future](https://github.com/intika/Librefox/issues/55) Librefox version** will be independent from Firefox and therefore will solve this issue.

**Windows**
- Download and install the last version of Firefox [x32 release](https://download-installer.cdn.mozilla.net/pub/firefox/releases/64.0/win32/en-US/Firefox%20Setup%2064.0.exe) or [x64 release](https://download-installer.cdn.mozilla.net/pub/firefox/releases/64.0/win64/en-US/Firefox%20Setup%2064.0.exe)
- Download [Librefox](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Windows-64.0.0.zip) zip file and extract it
- Locate Firefox's installation directory (where the firefox.exe is located) `C:\Program Files\Mozilla Firefox\` or `C:\Program Files (x86)\Mozilla Firefox\` or `Tor-Install-Directory\Browser\`
- Copy the extracted Librefox files to the install directory

**Linux**
- Download and extract the last version of Firefox [x32 release](https://download-installer.cdn.mozilla.net/pub/firefox/releases/64.0/linux-i686/en-US/firefox-64.0.tar.bz2) or [x64 release](https://download-installer.cdn.mozilla.net/pub/firefox/releases/64.0/linux-x86_64/en-US/firefox-64.0.tar.bz2)
- Download [Librefox](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-64.0.0.zip) zip file and extract it
- Copy the extracted Librefox files to the newly downloaded `firefox` directory
- You can use directly Librefox by running 'firefox/firefox'
- You can as well create a shortcut to 'firefox/firefox' to open Librefox easily.

**Mac**
- Download and install the [last version of Firefox](https://download-installer.cdn.mozilla.net/pub/firefox/releases/64.0/mac/en-US/Firefox%2064.0.dmg)
- Download [Librefox](https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Mac-60.4.0.zip) zip file and extract it
- Locate Firefox's installation directory (`Applications/Firefox.app/Contents/Resources/` or `Applications/Tor Browser.app/Contents/Resources/`)
- Copy the extracted files to the install directory

**Uninstall**
- To uninstall, just remove the files you added to your Firefox's install directory (to know what are the files to remove just check the downloaded Librefox zip file) then restart Firefox.

Edit Locked Settings
--------------------
Just edit `mozilla.cfg`, save and restart Librefox.

Browser Tests - Security/Fingerprint
------------------------------------
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

Browser Tests - Performances
----------------------------
Performance tests can be done here [LVP Octane](https://intika.github.io/lvp-octane/), it needs to be launched alone with other applications closed and with no other activity but the benchmark, also it's recommended to launch it many times and then calculate the average.

Browser Tests - DNS/VPN/Proxy Leak
----------------------------------
- [IPLeak](https://ipleak.net/)
- [Tenta-Test](https://tenta.com/test/)
- [IP-Browserleaks](https://browserleaks.com/ip)

About
-----
**License:** [Mozilla Public License 2.0](https://github.com/intika/Librefox/blob/master/License.txt)

**Inspired from:** [ungoogled-chromium](https://github.com/Eloston/ungoogled-chromium)

**Author:** Intika (from Liege/Belgium), contact: intika@librefox.org

**Donation:** [Paypal - support@librefox.org](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=support@librefox.org&lc=US&item_name=Donation+To+Librefox&currency_code=USD) if you like it you can offer me a coffee :)

**Based on:** [gHacks-user.js](https://github.com/ghacksuserjs/ghacks-user.js), [pyllyukko-user.js](https://github.com/pyllyukko/user.js/) and [privaconf](https://addons.mozilla.org/en-US/firefox/addon/privaconf/) big thanks to everyone.

**Acknowledgement**, special thanks to:
- The Mozilla team for their amazing work on Firefox
- The gHacks-User team for allowing the usage of their work
- Martin Brinkmann (gHacks.net) for writing on Librefox
- All the stargazers (users that are encouraging this project by starring it)
- All the contributors: @brainscar, @nhynes, @yoasif, @szepeviktor, @theel0ja, @atbanpc, @AnXh3L0, @samuel8941, @shaynem, @elypter, @colbycdev
- And everyone who is helping this project: @Eloston, @dimqua, @Atavic, @antuketot76, @maxidor, @anchev, @ribatamu, and all the others i forget to mention.

Librefox Roadmap
----------------
**Objectives for future versions of Librefox (this may change)**
- Develop an all-in-one Librefox addon to rule them all ? (Normal & Tor Version… this would simplify Librefox)
- Develop an easy to use firewall system for extensions (button/hosts/allow/deny/per-addon)
- Develop an advanced settings page
- Update checker extension (feature in the full extension ?)
- Advertisement for the project to reach more users ?

**Todo for future versions of Librefox (this may change)**
- Listed under [issues](https://github.com/intika/Librefox/issues/) section

Settings Index
--------------
```
// ==============================
// Index mozilla.cfg .......... :
// ==============================
//
// ---------------------------------------------------------------------
// Section: User settings                    // Bench Diff: +0    / 5000
// Section: Defaulting Settings              // Bench Diff: +0    / 5000
// ------------------------------------------
// Section: Controversial                    // Bench Diff: +0    / 5000
// Section: Firefox Fingerprint              // Bench Diff: +0    / 5000
// Section: Locale/Time                      // Bench Diff: +0    / 5000
// Section: Ghacks-user Selection            // Bench Diff: +100  / 5000
// Section: Extensions Manager               // Bench Diff: +0    / 5000
// Section: IJWY To Shut Up                  // Bench Diff: +0    / 5000
// Section: Microsoft Windows                // Bench Diff: +0    / 5000
// Section: Firefox ESR60.x                  // Bench Diff: +0    / 5000
// ------------------------------------------
// Section: Security 1/3                     // Bench Diff: +0    / 5000
// Section: Security 2/3                     // Bench Diff: +0    / 5000
// Section: Security 3/3 (Cipher)            // Bench Diff: +0    / 5000
// ------------------------------------------
// Section: Performance 1/5                  // Bench Diff: +650  / 5000
// Section: Performance 2/5                  // Bench Diff: -800  / 5000
// Section: Performance 3/5                  // Bench Diff: -1720 / 5000
// Section: Performance 4/5                  // Bench Diff: -200  / 5000
// Section: Performance 5/5                  // Bench Diff: -50   / 5000
// ------------------------------------------
// Section: General Settings 1/3             // Bench Diff: +100  / 5000
// Section: General Settings 2/3             // Bench Diff: +0    / 5000
// Section: General Settings 3/3             // Bench Diff: -40   / 5000
// ------------------------------------------
// Section: Disabled - ON/OFF                // Bench Diff: +0    / 5000
// Section: Disabled - Deprecated Active     // Bench Diff: +0    / 5000
// Section: Disabled - Deprecated Inactive   // Bench Diff: +0    / 5000
// ---------------------------------------------------------------------

// ==============================
// Index local-settings.js .... :
// ==============================
//
// ---------------------------------------------------------------------
// Section: General Settings                 // Bench Diff: ++    / 5000
// ---------------------------------------------------------------------

```

Cookies Settings
----------------
Using different web services without cookies is impossible and cookie settings in a browser are very important when it come to privacy, in Librefox the settings are locked to avoid unwanted changes in such an important setting, but they can be easily changed in `mozilla.cfg` under `User Settings: Cookies settings`.

Tracking Protection
-------------------
Firefox now integrates a tracking protection feature (based on disconnect.me) it's a small content blocking list, the listing can not be edited, this feature is disabled in Librefox. It's recommended to use uBlock Origin instead. This feature is disabled:

- Until it evolves and integrates at least list editing.
- Because double filtering (this + ublock) is not suitable for performance.

You can however easily enable this feature in `mozilla.cfg` under `User Settings: Track Protection` (just comment active lines with `//` or remove the entire section).

Comparing Changes And Updates
-----------------------------
If you want to compare changes over updates or if you already have a `user.js`/`mozilla.cfg`/`policies.json`. consider using [Compare-UserJS](https://github.com/claustromaniac/Compare-UserJS), it's an amazing tool to compare user.js files and output the diffs in detailed breakdown, developed by gHack's very own resident cat, [claustromaniac](https://github.com/claustromaniac) :cat:

Usage: If not on windows install [PowerShell](https://github.com/PowerShell/PowerShell) then (for example) `pwsh Compare-UserJS.ps1 mozilla.cfg user.js` (Warning that PowerShell connects to Microsoft sometimes).

Documentation
-------------

**Mozilla.cfg**: Locking and defaulting Librefox settings for security, privacy and performance.

**Policies.json**: Policies for enterprise environments (the settings available with `policies.json` are limited right now because this is a new feature of Firefox).

**Bench diff**: Impact on the performance of Librefox, it can be a gain or a loss of performance +100/5000 stand for 2% gained performance and -1500/5000 stand for -30% performance loss.

**lockPref**: Locked preference can not be changed by extensions or updates, they can only be changed in `mozilla.cfg`.

**Section**: Description of the settings section separated by ">>>".

**Defaulting VS Enforcing**: Defaulted settings can be changed by the user or an extension if permitted within the browser while enforced settings are locked and can not be changed within the browser, enforced settings can be changed in `mozilla.cfg`.

**About:config**: http://kb.mozillazine.org/About:config_entries.

Librefox Dark Theme
-------------------
Librefox provides a classic dark theme extension ([Librefox Dark Theme](https://addons.mozilla.org/en-US/firefox/addon/librefox-dark-theme/)) but also a purified version of ShadowFox available under [dark-theme directory](https://github.com/intika/Librefox/tree/master/dark-theme) to install it just copy the directory chrome to your Librefox profile directory and then restart Librefox, this will expand the dark theme to internal pages like settings pages.

Tuning Librefox
---------------

**Restart Button**

One simple solution is to bookmark `about:restartrequired` or `about:profiles` ... when restart is needed open that page and click "normal restart". You can even go further and add the bookmarks links to your icons bar and rename the link to an empty text (you will then have a direct icon to `about:profiles` and a 2 clicks restart).

![capture](https://user-images.githubusercontent.com/6892180/48963055-bd914000-ef82-11e8-8ea4-a58e56f5c4a4.png)
...

**Alternative Dark Theme**

<a href="https://github.com/overdodactyl/ShadowFox" target="_blank"><img height=80px src="https://raw.githubusercontent.com/overdodactyl/ShadowFox/master/.github/Screenshots/header.png"></a>

**Linux Fix Text Colors**

On Linux when using a dark desktop theme Librefox could display white text over white background or black text on black input on some sites or addons, this is fixed in Librefox with `lockPref("ui.use_standins_for_native_colors", true);`.

If `ui.use_standins_for_native_colors` is not enough to fix everything you can fix this issue with an other additional solution by using the following values in `about:config` (you need to have Adwaita theme installed) [more details](https://github.com/DmitriK/darkContrast#text-contrast-for-dark-themes) (Note that this is not needed with the default Librefox settings as it is already fixed)
```
widget.content.allow-gtk-dark-theme;false
widget.chrome.allow-gtk-dark-theme;false
widget.content.gtk-theme-override;Adwaita:light
```

Other Addons
------------

**Other privacy addons**
- [NoHTTP](https://addons.mozilla.org/en-US/firefox/addon/nohttp): Block http traffic and/or redirect it to https (Excellent replacement for the unrecommended https-everywhere)
- [Google-Container](https://addons.mozilla.org/en-US/firefox/addon/google-container/): Open all Google sites in a container
- [Facebook-Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/): Open all Facebook sites in a container
- [Request-Blocker](https://addons.mozilla.org/en-US/firefox/addon/request-blocker-we/): Hosts style blocking sites
- [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/): Makes a lot of web resources available locally to improve privacy
- [Dont-Track-Me-Google](https://addons.mozilla.org/en-US/firefox/addon/dont-track-me-google1/): Cleaning Google search result links
- [Canvas-Blocker](https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/): Prevent some fingerprinting techniques (This should not be used with browser plugins addon as it provide similar features)
- [Cookie-Quick-Manager](https://addons.mozilla.org/en-US/firefox/addon/cookie-quick-manager/): View and edit cookies
- [Mozilla-Multi-Account-Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/): Manage containers and assign sites to specific container
- [Switch-Containers](https://addons.mozilla.org/en-US/firefox/addon/switch-container/): Switching container for the current tab easily
- [Temporary-Containers](https://addons.mozilla.org/en-US/firefox/addon/temporary-containers/): Maximizing and automating container potential
- [Smart-Referer](https://addons.mozilla.org/en-US/firefox/addon/smart-referer/): Manage referer with a button (Send referers only when staying on the same domain.)

**Other useful addons**
- [Dormancy](https://addons.mozilla.org/en-US/firefox/addon/dormancy/): Unload tab after a certain time, useful for performance when opening a lot of tabs
- [Add Custom Search Engine](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/): Customize your search engine
- [ProxySwitcheroo](https://addons.mozilla.org/en-US/firefox/addon/proxyswitcheroo/): Apply proxy settings in a click
- [UndoCloseTabButton](https://addons.mozilla.org/en-US/firefox/addon/undoclosetabbutton/): Reopen last closed tab
- [Advanced Github Notifier](https://addons.mozilla.org/en-US/firefox/addon/advanced-github-notifier/): Github notifications
- [Shortkeys](https://addons.mozilla.org/en-US/firefox/addon/shortkeys/): Add custom shortkeys
- [Tabboo](https://addons.mozilla.org/en-US/firefox/addon/tabboo-session-manager/): Session manager

**Librefox Addons For ESR And Tor**
- [Librefox HTTP Watcher ESR - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-tor-mod/): Change the url bar color on http and onion sites (to green/red)
- [Librefox NoHTTP - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/nohttp-librefox-mod-for-tor/): Block http traffic and/or redirect it to https (Excellent replacement for the unrecommended https-everywhere)

Tor Compatibility
-----------------
We do not recommend connecting over Tor on Librefox classic version (because of the missing Librefox-Tor-Addons, they are only included in the tor version for obvious reasons), use instead Librefox-Tor version if your threat model calls for it, or for accessing hidden services (Thus said tor settings have been enabled since v2 on all Librefox versions for user toriffying/proxifying their entire connection).

Currently Librefox-TBB is in beta test, Tor compatibility may change.

DRM Compatibility
-----------------
Digital rights management (DRM) is enforced off by default (this is needed for Netflix and similar); you can enable it with the following instructions:
- Open `mozilla.cfg`
- Under the section `Section: User Settings`
- Comment the active lines with `// ` under the subsection `User Settings: DRM/CDM - Main`
- Comment the active lines with `// ` under the subsection `User Settings: DRM/CDM - Widevine`
- Restart Firefox then open `about:preferences` and enable `Play DRM...` under general section
- Firefox will download Widevine and enable it (under `about:addons` plugins section) you can force the download by clicking `Check for updates` under the tools button

Librefox ESR
------------
For ESR users if you opt for `Librefox HTTP Watcher` you need to use this version [Librefox HTTP Watcher ESR - Tor MoD](https://addons.mozilla.org/en-US/firefox/addon/librefox-http-watcher-tor-mod/)

Building And Packaging
----------------------

**Linux**

- `Build instruction will be updated soon`

**Windows**

- `Build instruction will be updated soon`

**Mac**

- `Build instruction will be updated soon`
