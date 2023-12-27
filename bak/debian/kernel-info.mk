########################################################################
# Kernel settings
########################################################################

VARIANT = android
KERNEL_BASE_VERSION = 4.14.316

# The kernel cmdline to use
KERNEL_BOOTIMAGE_CMDLINE = bootopt=64S3,32N2,64N2 buildvariant=userdebug

# Slug for the device vendor. This is going to be used in the KERNELRELEASE
# and package names.
DEVICE_VENDOR = realme

# Slug for the device model. Like above.
DEVICE_MODEL = rmx6785

# Marketing-friendly full-name. This will be used inside package descriptions
DEVICE_FULL_NAME = RealMe 6

# Defconfig to use (adjust this to your actual defconfig file)
KERNEL_DEFCONFIG = RM6785_defconfig

# Whether to include DTBs with the image. Use 0 (no) or 1.
KERNEL_IMAGE_WITH_DTB = 1

# Various other settings that will be passed straight to mkbootimg
KERNEL_BOOTIMAGE_PAGE_SIZE = 2048
KERNEL_BOOTIMAGE_BASE_OFFSET = 0x40078000
KERNEL_BOOTIMAGE_KERNEL_OFFSET = 0x00008000
KERNEL_BOOTIMAGE_RAMDISK_OFFSET = 0x07c08000
KERNEL_BOOTIMAGE_SECONDIMAGE_OFFSET = 0x0
KERNEL_BOOTIMAGE_TAGS_OFFSET = 0x0bc08000
KERNEL_BOOTIMAGE_DTB_OFFSET = 0x01E00000

# OS version and patch level
KERNEL_BOOTIMAGE_OS_VERSION = 13.0.0
KERNEL_BOOTIMAGE_OS_PATCH_LEVEL = 2023-09

# Kernel bootimage version. Defaults to 0 (legacy header).
# Your extracted info indicates it's using header version 2
KERNEL_BOOTIMAGE_VERSION = 2

########################################################################
# Android verified boot
########################################################################

# Whether to build a flashable vbmeta.img. Please note that currently
# only empty vbmeta images (disabling verified boot) can be generated.
# Use 0 (no) or 1 (default).
DEVICE_VBMETA_REQUIRED = 0

########################################################################
# Automatic flashing on package upgrades
########################################################################

# Whether to enable kernel upgrades on package upgrades. Use 0 (no) or 1.
FLASH_ENABLED = 1

# If your device is treble-ized, but aonly, you should set the following to
# 1 (yes).
FLASH_IS_AONLY = 1

# Device manufacturer. This must match the `ro.product.vendor.manufacturer`
# Android property. If you don't want to specify this, leave it undefined,
# FLASH_INFO_CPU will be checked instead.
FLASH_INFO_MANUFACTURER = realme

# Device model. This must match the `ro.product.vendor.model`
# Android property. If you don't want to specify this, leave it undefined,
# FLASH_INFO_CPU will be checked instead.
FLASH_INFO_MODEL = RMX6785

# Device CPU. This will be grepped against /proc/cpuinfo to check if
# we're running on the specific device. Note this is a last-resort
# method, specifying FLASH_INFO_MANUFACTURER and FLASH_INFO_MODEL is
# recommended.
FLASH_INFO_CPU = MT6785

########################################################################
# Kernel build settings
########################################################################

# Whether to cross-build. Use 0 (no) or 1.
BUILD_CROSS = 1

# (Cross-build only) The build triplet to use. You'll probably want to
# use aarch64-linux-android- if building Android kernels.
BUILD_TRIPLET = aarch64-linux-android-

# The compiler to use. Recent Android kernels are built with clang.
BUILD_CC = clang

# Target kernel architecture
KERNEL_ARCH = arm64

# Kernel target to build
KERNEL_BUILD_TARGET = Image.gz

