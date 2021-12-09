macaddressgenerator(){
   eval "od -An -N6 -tx1 /dev/urandom | sed -e 's/^  *//' -e 's/  */:/g' -e 's/:$//' -e 's/^\(.\)[13579bdf]/\10/'"
}

ipgenerator(){
   #eval "od -An -N6 -tx1 /dev/urandom | sed -e 's/^  *//' -e 's/  */:/g' -e 's/:$//' -e 's/^\(.\)[13579bdf]/\10/'"

   a='175.11.14.'
   b=$((1 + $RANDOM % 254))
   c="${a}${b}"
   echo "${c}"
}


while true
do
   macaddres=$(macaddressgenerator)

   #ip_address=$(dd if=/dev/urandom bs=4 count=1 2>/dev/null |
   #          od -An -tu1 |
   #          sed -e 's/^ *//' -e 's/  */./g')

   ip_address=$(ipgenerator)
   echo $ip_address

   #macaddress=  eval "od -An -N6 -tx1 /dev/urandom | sed -e 's/^  *//' -e 's/  */:/g' -e 's/:$//' -e 's/^\(.\)[13579bdf]/\10/'"
   #echo $macaddress

   #CHANGE MACADDRESS
   ifconfig eth0 down hw ether $macaddres
   ifconfig eth0 up


   #CHANGE IP
   ifconfig eth0 down
   ifconfig eth0 inet $ip_address

   ping 175.11.14.2 -c 1
done