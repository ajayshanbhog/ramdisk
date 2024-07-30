#/bin/bash
# Created by Ajay K Shanbhog
# This is is a install script file to install ramdisk features
# By Default 1GB is allocated 


cd /usr
mkdir rmdk_per
chmod 755 rmdk_per
cd /etc
mkdir ramdisk
cd ramdisk
wget https://files.navisto.cloud/api/public/dl/AUwoSBNQ/home/os_ramdrive/start_ramdisk.sh
wget https://files.navisto.cloud/api/public/dl/9QrwxkNO/home/os_ramdrive/stop_ramdisk.sh
cd /etc/systemd/system/
wget https://files.navisto.cloud/api/public/dl/HOE1VXYs/home/os_ramdrive/ramdisk_init.service
wget https://files.navisto.cloud/api/public/dl/y2o9KiS1/home/os_ramdrive/ramdisk_terminate.service
sudo systemctl enable ramdisk_init
sudo systemctl start ramdisk_init
sudo systemctl enable ramdisk_terminate
sudo systemctl start ramdisk_terminate
echo "Installed Successfully"
echo "System will reboot in 5 seconds to apply changes"
echo "After reboot you can see a folder in /mnt called ramdisk where you can store the files or delete"
sleep 5
reboot
