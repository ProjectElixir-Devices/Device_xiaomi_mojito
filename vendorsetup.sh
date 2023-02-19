echo 'Starting to clone stuffs needed for your device'

echo 'Cloning Kernel tree'
# Kernel Tree
rm -rf kernel/xiaomi/mojito && git clone --depth=1 https://github.com/ProjectElixir-Devices/kernel_xiaomi_mojito -b 13 kernel/xiaomi/mojito

echo 'Cloning Vendor tree'
# Vendor Tree
rm -rf vendor/xiaomi/mojito && git clone https://github.com/ArrowOS-Devices/android_vendor_xiaomi_mojito -b arrow-13.0 vendor/xiaomi/mojito

echo 'Cloning GCam Go'
# GCam Go
rm -rf packages/apps/GCamGOPrebuilt;git clone https://github.com/ArrowOS-Devices/android_packages_apps_GCamGOPrebuilt -b arrow-13.0 packages/apps/GCamGOPrebuilt

echo 'Cloning gcc stuff'
git clone --depth=1 https://github.com/StatiXOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-elf -b 13.0.0 prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone --depth=1 https://github.com/StatiXOS/android_prebuilts_gcc_linux-x86_arm_arm-eabi -b 12.0.0 prebuilts/gcc/linux-x86/arm/arm-eabi
