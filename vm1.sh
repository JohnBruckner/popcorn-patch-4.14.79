sudo qemu-system-x86_64 -m 2048 -smp 4 \
    -hda $HOME/popcorn-vm/x86.img \
    -netdev tap,id=x86nic,ifname=tap0 -device e1000,netdev=x86nic,mac=52:54:00:12:34:60 \
    -nographic \
    -kernel obj/linux-x86-basic/arch/x86_64/boot/bzImage \
    -append "root=/dev/sda1 console=ttyS0"



