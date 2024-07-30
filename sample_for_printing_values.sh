ram_free=`free | grep Mem | awk '{print int($4/(1024*1024))}'`
echo "$ram_free"
if [ $ram_free -gt 2 ] 
then
	echo "yes"
else
	echo "no"
fi		
