if ! [ -d /mnt/ramdisk ] 
 then
     echo "Not Mounted" 
     mkdir /mnt/ramdisk
 else
     echo "Mounted"
 fi
 
 chmod 777 /mnt/ramdisk
 mount -t tmpfs -o size=$1G ramdisk /mnt/ramdisk
 
 
 if ! [ -d /usr/rmdk_per ] 
 then
     echo "ramdisk files missing "
     echo "creating ..."	 
     mkdir /usr/rmdk_per
     chmod 755 /usr/rmdk_per # no copying of files because if folder is not present than files will not be there
 else
     echo "found files"
     cp -rp /usr/rmdk_per/* /mnt/ramdisk
     chmod 755 /usr/rmdk_per
     echo "Successfully created !"	
 fi
