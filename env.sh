############################# 00_prepare_kernels

# -f option forces gunzip to overwrite
echo "############################# 00_prepare_kernels"

#cd /local/repository/qemu-images/
# cp rootfs.ext2.gz.back rootfs.ext2.gz
#gunzip -f rootfs.ext2.gz

touch a.txt

#cd /local/repository/
cp /local/repository/qemu-images/ssh_user* ~/
cp /local/repository/qemu-images/ssh_user* ~/users/aajith2/


############################# 01 install dependencies 
sleep 3
echo "############################# 01 install dependencies"

sudo apt-get update; sudo apt-get install qemu -y; sudo apt-get install uml-utilities -y; sudo apt-get install sshpass -y; sudo apt-get install systemd -y; sudo apt-get install qemu-system-x86; 


############################# 02_setup_host_net
sleep 13


echo "############################# 02_setup_host_net"


#python join.py
sleep 3

#user_name=`whoami`
#sudo tunctl -u "$user_name" -t tap0
#sudo ifconfig tap0 192.168.1.2 netmask 255.255.255.0 up


############################# 03_setup_forwarding.sh
#sleep 3
#echo "############################# 03_setup_forwarding.sh"

#interface_name=`ip link show | grep '2: ' | awk -F ' ' '{print substr($2, 1, length($2)-1)}'`
#sudo iptables -t nat -A POSTROUTING -o "$interface_name" -j MASQUERADE
#sudo iptables -I FORWARD 1 -i tap0 -j ACCEPT
#sudo iptables -I FORWARD 1 -o tap0 -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT
#sudo echo 1 > /proc/sys/net/ipv4/ip_forward

############################## 15_replace_host_ssh.sh
#sleep 3
#echo "############################# 15_replace_host_ssh.sh"

#wan_ip=`ifconfig $interface_name | grep netmask | awk -F ' ' '{print$2}'`
#sudo iptables -t nat -I PREROUTING -p tcp --dport 22323 -i "$interface_name" -j DNAT --to $wan_ip:22

############################## unzip rootfs.ext2.gz

#gunzip /local/repository/qemu-images/rootfs.ext2.gz
