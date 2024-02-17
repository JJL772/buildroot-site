#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")/../../output/images"
qemu-system-x86_64 -m size=2048 -no-reboot -nographic -kernel ./bzImage -initrd ./rootfs.ext2 -append "console=ttyS0 init=/linuxrc root=/dev/ram0" \
	-nic user,hostfwd=tcp::8022-:22

