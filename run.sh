#!/bin/bash

image_url="https://drive.google.com/file/d/1CT4z1P6jElWZs5MLh_aOiuZoyPweVMpe/view?usp=share_link"
FILEID="1CT4z1P6jElWZs5MLh_aOiuZoyPweVMpe"
FILENAME="/local/repository/qemu-images/image.qcow2"

COMMAND="wget --load-cookies /tmp/cookies.txt \"https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=${FILEID}' -O- | sed -rn 's/.confirm=([0-9A-Za-z_]+)./\1\n/p')&id=${FILEID}\" -O ${FILENAME} && rm -rf /tmp/cookies.txt"

eval "$COMMAND"
sleep 1

sudo qemu-system-x86_64 -machine pc -cpu Nehalem -m 1G \
-drive file=/local/repository/qemu-images/image.qcow2 -device e1000,netdev=net \
-netdev user,id=net,hostfwd=tcp::2222-:22 -kernel /local/repository/qemu-images/kernel \
-initrd /local/repository/qemu-images/initrd \
-nographic -append "root=LABEL=rootfs console=ttyS0" 


