#!/bin/sh

#  remove-key.sh
#  XcodeTravis
#
#  Created by Ajay Sharma on 12/4/14.
#  Copyright (c) 2014 ___v2Tech Ventures___. All rights reserved.
#!/bin/sh
security delete-keychain ios-build.keychain
rm -f ~/Library/MobileDevice/Provisioning\ Profiles/$PROFILE_NAME.mobileprovision