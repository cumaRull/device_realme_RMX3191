echo "starting depencies"
echo "REMOVING UNUSED DEPENCIES"
rm -rf ./hardware/oplus/interfaces/
rm -rf ./vendor/realme/RMX3191-ims
rm -rf ./vendor/realme/even-ims
rm -rf ./vendor/realme/RMX3191
rm -rf ./vendor/realme/even
rm -rf ./device/realme/even
rm -rf ./hardware/mediatek/InCallService
rm -rf ./device/realme/RMX3191-kernel
echo "succesfully"

echo "clone vt"
git clone https://github.com/cumaRull/vendor_realme_RMX3191.git -b rui4-oss ./vendor/realme/RMX3191
echo "successfully"
echo "clone Kernel prebuilt"
KT=kernel/realme/even/KernelSU/kernel/Kconfig
if ! [ -a $KT ]; then rm -rf kernel/realme/even && git clone --recurse-submodules https://github.com/Badmaneers/kernel_realme_even.git --depth=1 kernel/realme/even
fi
