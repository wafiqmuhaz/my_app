#!/bin/sh
#
# wafiq
# flutter-netlify-build.sh
# Created by Cong Fandi on 7/11/2021
# email 	: wafiqmuhaz.dev.com
# website 	: https://wafiqmuhaz.showwcase.com/
# Copyright © 2021 Cong Fandi. All rights reserved.
#
#

FLUTTER_BRANCH=`grep channel: .metadata | sed 's/  channel: //g'`
FLUTTER_REVISION=`grep revision: .metadata | sed 's/  revision: //g'`

git clone https://github.com/flutter/flutter.git
cd flutter
git checkout $FLUTTER_BRANCH
git pull origin $FLUTTER_BRANCH
git checkout $FLUTTER_REVISION
cd ..

flutter/bin/flutter build web --release --target='lib/main_development.dart'
