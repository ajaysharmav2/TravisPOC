#!/bin/sh

#  add-key.sh
#  XcodeTravis
#
#  Created by Ajay Sharma on 12/4/14.
#  Copyright (c) 2014 ___v2Tech Ventures___. All rights reserved.
security create-keychain -p travis ios-build.keychain
security import ./scripts/travis/apple.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./scripts/travis/Certificate.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./scripts/travis/Certificates-key.p12 -k ~/Library/Keychains/ios-build.keychain -P $KEY_PASSWORD -T /usr/bin/codesign
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ./scripts/travis/profile/* ~/Library/MobileDevice/Provisioning\ Profiles/