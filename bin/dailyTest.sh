#!/bin/bash
. ~/.env
~/Workspace/ProjectManagement/script/devscript/buildscript/buildAndroidModule.sh
~/Workspace/ProjectManagement/script/devscript/testscript/testAndroidModule.sh $MMR_DEV_ROOT --q
