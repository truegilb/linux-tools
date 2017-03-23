# 
DRV=`lshw -C network |grep "driver.*wireless"|awk 'BEGIN{FS=" "} {print $3}' |awk 'BEGIN{FS="="} {print $2}'`
echo "Looks like your wireless driver is $DRV"
echo "Resetting wifi interface $DRV (requires super-user permission)"
sudo modprobe -r $DRV
sudo modprobe $DRV


