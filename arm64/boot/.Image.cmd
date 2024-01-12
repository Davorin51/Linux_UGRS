cmd_arch/arm64/boot/Image := /home/student/buildroot/output/host/bin/aarch64-buildroot-linux-gnu-objcopy  -O binary -R .note -R .note.gnu.build-id -R .comment -S vmlinux arch/arm64/boot/Image
