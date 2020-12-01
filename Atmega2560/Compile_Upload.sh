
arduino-cli sketch new $1
chmod 777 $1
cd $1
file="../$1.ino"
destFile="./$1.ino"
cp $file $destFile
arduino-cli compile --fqbn arduino:avr:mega {$pwd}
arduino-cli upload -p /dev/cu.usbmodem1442301 --fqbn arduino:avr:mega {$pwd}
myfunc() {
    sleep 10s
    pkill -fl /dev/cu.usbmodem1442301
}
sleep 2
myfunc &
screen -L /dev/cu.usbmodem1442301
echo "Program Completed"
logs="../Logs/$1.txt"
cp screenlog.0 $logs
rm -rf "../$1"
mv $file "../studentCode"