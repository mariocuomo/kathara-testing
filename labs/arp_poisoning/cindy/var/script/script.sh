macaddressgenerator(){
   eval "od -An -N6 -tx1 /dev/urandom | sed -e 's/^  *//' -e 's/  */:/g' -e 's/:$//' -e 's/^\(.\)[13579bdf]/\10/'"
}

ipgenerator(){
   a='175.11.14.'
   b=$((1 + $RANDOM % 254))
   c="${a}${b}"
   echo "${c}"
}


while true
do
   macaddres=$(macaddressgenerator)

   ip_address=$(ipgenerator)
   echo $ip_address

   #CHANGE MACADDRESS
   ifconfig eth0 down hw ether $macaddres
   ifconfig eth0 up

   #CHANGE IP
   ifconfig eth0 down
   ifconfig eth0 inet $ip_address

   ping 175.11.14.2 -c 1
done