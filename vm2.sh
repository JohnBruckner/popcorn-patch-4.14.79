sudo qemu-system-x86_64 -m 2048 -smp 4 \
    -hda $HOME/popcorn-vm/x862.img \
    -netdev tap,id=x86nic2,ifname=tap1 -device e1000,netdev=x86nic2,mac=52:54:00:12:34:63 \
    -nographic \
    -kernel obj/linux-x86-basic/arch/x86_64/boot/bzImage \
    -append "root=/dev/sda1 console=ttyS0"



