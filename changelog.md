 2023-05-28
 ==========
* Undervolted CPU,GPU,CCI
* Upstreamed to 4.14.311
* Set Kprofiles to Balanced Boost
* Silence Logspam from Many MediaTek Drivers
* mediatek/ged : Tune CPU/GPU for better stability
* mediatek/ged : Define DISPLAY_MAX_FPS as 90 for better UX Performance
* drivers: mtk-base: power: Globally silence MT6785 power logspam in dmesg 
* drivers: mtk-vpu: Fix rest of VPU logspam
* arm64/configs : Switch to 1000Hz Timer (Saves power under certain workloads )
* defconfig: Enable default-key driver ( recovery decryption fix may get easier )
* Drop MTK_SYSTRACKER_V2
* [PATCH] : RM6785 : Add KSU Calls for oplus-mtk-4.14 ( Backport for 4.14)
* [SECURITY/SYSTEM] : Remove oplus root guard security feature. ( Fucks with kernelsu , moreover useless feature)
* Enabled KSU SafeMode ( Bootloop Protect)
* drivers/media: mtk-vcodec: Prefer platform specific headers first 
* [MTK/ALPS] GPU: Enable AI PQ gralloc extra
* [MTK/ALPS]  sensor: add VC feature for QPD
* [MTK/ALPS] cmdq: define MAX_TASK/CMD_SIZE for each thread
* [MTK/ALPS] core_ctl: fix max util tracking windows for fpsgo
