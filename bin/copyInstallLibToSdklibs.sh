#!/bin/bash
rm -R $MMR_DEV_ROOT/sdk/lib/android
cp -R $MMR_DEV_ROOT/core/install/lib/android $MMR_DEV_ROOT/sdk/lib/android
rm -R $MMR_DEV_ROOT/sdk/lib/linux
cp -R $MMR_DEV_ROOT/core/install/lib/linux $MMR_DEV_ROOT/sdk/lib/linux
