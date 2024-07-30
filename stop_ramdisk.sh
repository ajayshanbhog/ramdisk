if ! [ -d /mnt/ramdisk ] 
 then
     echo "Not Mounted" 
 else
     echo "Mounted"
     echo "Restoring files"
     rm -rf /usr/rmdk_per/*
     cp -rpu /mnt/ramdisk/* /usr/rmdk_per
     echo "Successfully Updated!"
 fi
