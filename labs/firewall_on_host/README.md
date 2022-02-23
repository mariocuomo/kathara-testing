# ARP POISONING

NETWORK TOPOLOGY

<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/firewall_on_host/schema.png">
</div>


PC2 doesn't accept packets from eth0 with ip source 195.11.14.1/24 related to a new connections.<br>
This means that if PC1 starts a ping to PC2, PC2 doesn't response to it.<br>
At the same time PC2 can start a conversation - e.g., ping -  to PC1.

This is the main basic idea of a firewall: deny the traffic that starts from external to the system.


```Bash
iptables-legacy -A INPUT -i eth0 -s 195.11.14.1/24 -m state --state NEW -j DROP
```






