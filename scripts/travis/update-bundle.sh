#!/bin/sh

#  Script.sh
#  XcodeTravis
#
#  Created by Ajay Sharma on 12/5/14.
#  Copyright (c) 2014 ___v2Tech Ventures___. All rights reserved.
if [ ! -z "$INFO_PLIST" ]; then
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $TRAVIS_BUILD_NUMBER" "$INFO_PLIST"
echo "Set CFBundleVersion to $TRAVIS_BUILD_NUMBER"
fi

if [ ! -z "$BUNDLE_IDENTIFIER" ]; then
/usr/libexec/PlistBuddy -c "Set :CFBundleIdentifier $BUNDLE_IDENTIFIER" "$INFO_PLIST"
echo "Set CFBundleIdentifier to $BUNDLE_IDENTIFIER"
fi

if [ ! -z "$BUNDLE_DISPLAY_NAME" ]; then
/usr/libexec/PlistBuddy -c "Set :CFBundleDisplayName $BUNDLE_DISPLAY_NAME" "$INFO_PLIST"
echo "Set CFBundleDisplayName to $BUNDLE_DISPLAY_NAME"
fi