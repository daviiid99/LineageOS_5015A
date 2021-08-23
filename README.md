# LineageOS Builds Steps
```
#Init LineageOS
mkdir -p ~/android/lineage&&cd ~/android/lineage
repo init -u https://github.com/LineageOS/android.git -b lineage-17.1
repo sync
source build/envsetup.sh

#Repos
git clone https://github.com/daviiid99/LineageOS_5015A device/tcl/5015a

#Patches
patch -d external/skia -p1 < device/tcl/5015a/patches/external/skia/0001-GrGLCaps-allow-ignoring-vendor-supplied-texture-swiz.patch
patch -d frameworks/base -p1 < device/tcl/5015a/patches/frameworks/base/0001-hwui-add-dependency-on-libbase.patch
patch -d frameworks/base -p1 < device/tcl/5015a/patches/frameworks/base/0002-Fix-crash-on-some-devices-by-checking-for-null-clien.patch
patch -d frameworks/opt/net/wifi -p1 < device/tcl/5015a/patches/frameworks/opt/net/wifi/0001-Restore-O-O-MR1-behaviour-of-initing-ifaces-before-s.patch
patch -d system/core -p1 < device/tcl/5015a/patches/system/core/0001-rootdir-add-support-for-custom-ld-template.patch

#Build
brunch 5015a
```
