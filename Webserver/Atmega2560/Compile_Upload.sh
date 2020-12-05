arduino-cli sketch new $1
arduino-cli sketch new keyCode
cd keyCode
keyfile="../keyCode.ino"
keydestFile="./keyCode.ino"
cp $keyfile $keydestFile
arduino-cli compile --fqbn arduino:avr:mega {$pwd}
arduino-cli upload -p /dev/cu.usbmodem1442301 --fqbn arduino:avr:mega {$pwd}
myfunc() {
    sleep 20s
    pkill -fl /dev/cu.usbmodem1442301
}
sleep 1
myfunc &
screen -L /dev/cu.usbmodem1442301
echo "Program Completed"
keylogs="../Logs/keyCode_$1.txt"
cp screenlog.0 $keylogs
cd ..
rm -rf "./keyCode"
chmod 777 $1
cd $1
file="../$1.ino"
destFile="./$1.ino"
cp $file $destFile
arduino-cli compile --fqbn arduino:avr:mega {$pwd}
arduino-cli upload -p /dev/cu.usbmodem1442301 --fqbn arduino:avr:mega {$pwd}
myfunc() {
    sleep 20s
    pkill -fl /dev/cu.usbmodem1442301
}
sleep 1
myfunc &
screen -L /dev/cu.usbmodem1442301
echo "Program Completed"
logs="../Logs/$1.txt"
cp screenlog.0 $logs
rm -rf "../$1"
cp $file "../studentCode"
logOut="../Logs/$1_Out.txt"
keylogOut="../Logs/keyCode_$1_Out.txt"
diffOut="../Logs/diff_$1_Out.txt"
awk -f "../percentify" $logs >> $logOut
awk -f "../percentify" $keylogs >> $keylogOut
paste $keylogOut $logOut | awk -f "../grade" >> $diffOut
exit