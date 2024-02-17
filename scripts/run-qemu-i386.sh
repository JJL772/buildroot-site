#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")/../../output/images"
qemu-system-i386 -m size=2048 -no-reboot -nographic -kernel ./bzImage -initrd ./rootfs.ext2 -append "console=ttyS0 init=/linuxrc root=/dev/ram0"
