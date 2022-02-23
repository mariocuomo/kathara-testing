# Routing Information Protocol - RIP

NETWORK TOPOLOGY

<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/routing_information_protocol_RIP/schema.png">
</div>


**Routing Information Protocol** (RIP) is a dynamic routing protocol based on distance-vector approach.<br>
Each router tells its neighbors what it knows about the known world. Each router receives this information and builds a routing table which is injected into the machine's kernel.


In r2 shell:
```Bash
vtysh
show ip route

#=============
#	OUTPUT
#============
R>* 195.11.0.0/30 [120/3] via 195.11.0.18, eth1, weight 1, 00:00:56
R>* 195.11.0.4/30 [120/3] via 195.11.0.18, eth1, weight 1, 00:00:56
R>* 195.11.0.8/30 [120/2] via 195.11.0.18, eth1, weight 1, 00:00:55
R>* 195.11.0.12/30 [120/2] via 195.11.0.18, eth1, weight 1, 00:00:55
C>* 195.11.0.16/30 is directly connected, eth1, 00:00:58
C>* 195.11.1.0/24 is directly connected, eth0, 00:00:58
```






