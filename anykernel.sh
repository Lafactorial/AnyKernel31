### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Kernel for Garnet by @ HaKaN
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=garnet
device.name2=garnet_in
device.name3=garnetp
device.name4=Redmi Note 13 Pro 5G
device.name5=Poco X6 5G
supported.versions=16
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


# boot shell variables
BLOCK=boot
IS_SLOT_DEVICE=1
RAMDISK_COMPRESSION=auto
PATCH_VBMETA_FLAG=auto

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

## Start boot install

split_boot # Use split_boot to skip ramdisk unpack, e.g., for devices with init_boot ramdisk

ui_print "- $(strings "${AKHOME}"/Image 2>/dev/null | grep -E -m1 'Linux version.*#' | awk '{print $3}')"

flash_boot # Use flash_boot to skip ramdisk repack, e.g., for devices with init_boot ramdisk

## End boot install
