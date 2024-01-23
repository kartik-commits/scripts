git clone https://github.com/kartik-commits/device_xiaomi_redwood.git -b aosp device/xiaomi/redwood
echo "Enter Android version, e.g. for Android-14 type just 14"
read aosp_branch
git clone https://github.com/kartik-commits/device_xiaomi_sm7325-common.git -b aosp$aosp_branch device/xiaomi/sm7325-common

echo "Want to clone with depth 1 ..?? 'yes/no' "
read clone_depth
if [ "$clone_depth" == "yes" ]; then
echo "Cloning with depth 1"
git clone https://github.com/kartik-commits/vendor_xiaomi_redwood.git --depth 1 vendor/xiaomi/redwood
git clone https://github.com/kartik-commits/vendor_xiaomi_sm7325-common.git --depth 1 vendor/xiaomi/sm7325-common
git clone https://github.com/kartik-commits/kernel_xiaomi_sm7325.git --depth 1 kernel/xiaomi/sm7325
fi
if [ "$clone_depth" == "no" ]; then
git clone https://github.com/kartik-commits/vendor_xiaomi_redwood.git vendor/xiaomi/redwood
git clone https://github.com/kartik-commits/vendor_xiaomi_sm7325-common.git vendor/xiaomi/sm7325-common
git clone https://github.com/kartik-commits/kernel_xiaomi_sm7325.git kernel/xiaomi/sm7325
fi

git clone https://github.com/tiann/KernelSU.git kernel/xiaomi/sm7325/KernelSU
git clone https://github.com/PixelExperience/hardware_xiaomi.git hardware/xiaomi
git clone https://gitlab.com/kattya9512/redwood-firmware.git vendor/xiaomi/redwood-firmware
