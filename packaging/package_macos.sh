#!/bin/bash

# Usage: ./package_macos.sh /path/to/Firefox.dmg [--install]
# If `--install` is passed, will copy Librefox.app into /Applications.
# Otherwise, Librefox.dmg will be created next to Firefox.dmg

repo=$(git rev-parse --show-toplevel)

vol=$(hdiutil attach "$1" -shadow | tail -n 1 | cut -f 3)
app="$(basename "$vol").app"

cp "$repo/packaging/mac/background.png" "$vol/.background/"

cd "$vol"
codesign --remove-signature "$app"

cd "$app/Contents"
rm -rf _CodeSignature Library/LaunchServices/org.mozilla.updater

cd MacOS
rm -rf plugin-container.app/Contents/_CodeSignature \
  crashreporter.app \
  updater.app

cd ../Resources
rm -rf update-settings.ini updater.ini
cp -R "$repo/librefox/." .

cd browser/features
rm -rf aushelper@mozilla.org.xpi \
  firefox@getpocket.com.xpi \
  onboarding@mozilla.org.xpi

if [ "$2" == "--install" ]; then
  cd "$vol"
  cp -R "$app" /Applications/Librefox.app
fi

cd "$repo"
hdiutil detach "$vol"

if [ "$2" != "--install" ]; then
  out_dir=$(dirname "$1")
  rm -f "$out_dir/Librefox.dmg"
  hdiutil convert -format UDZO -o "$out_dir/Librefox.dmg" "$1" -shadow
fi
