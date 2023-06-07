############################# 00_prepare_kernels

# -f option forces gunzip to overwrite
echo "############################# 00_prepare_kernels"

#cd /local/repository/qemu-images/
# cp rootfs.ext2.gz.back rootfs.ext2.gz
#gunzip -f rootfs.ext2.gz

touch /local/repository/a.txt

#cd /local/repository/
cp /local/repository/qemu-images/ssh_user* ~/
cp /local/repository/qemu-images/ssh_user* ~/users/aajith2/


############################# 01 install dependencies 
sleep 3
echo "############################# 01 install dependencies"

sudo apt-get update; sudo apt-get install qemu -y; sudo apt-get install uml-utilities -y; sudo apt-get install sshpass -y; sudo apt-get install systemd -y; sudo apt-get install qemu-system-x86; 


############################# 02_setup_host_net
sleep 13


