SIZE=`cat /proc/spl/kstat/zfs/arcstats | egrep "^size" | egrep -o "[0-9]{3,}"`
echo "$(($SIZE/1024/1024))"
