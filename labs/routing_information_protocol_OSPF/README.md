# Routing Information Protocol - RIP

NETWORK TOPOLOGY

<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/routing_information_protocol_OSPF/schema.png" height=550>
</div>


**Open Shortest Path First** (OSPF) is a dynamic routing protocol based on link-state packet approach_.<br>
Each router tells to the known world information about its neighbors.<br>
Each router receives this information, builds the network graph and computing the shortest path to every destination.


In r2 shell:
```Bash
vtysh
show ip route

#=============
# OUTPUT
#============
O>* 195.11.0.0/30 [110/20] via 195.11.1.1, eth0, weight 1, 00:04:29
O>* 195.11.0.4/30 [110/13] via 195.11.1.3, eth0, weight 1, 00:04:29
O>* 195.11.0.8/30 [110/20] via 195.11.0.18, eth1, weight 1, 00:04:29
  *                        via 195.11.1.3, eth0, weight 1, 00:04:29
O>* 195.11.0.12/30 [110/20] via 195.11.0.18, eth1, weight 1, 00:04:30
O   195.11.0.16/30 [110/10] is directly connected, eth1, weight 1, 00:05:21
C>* 195.11.0.16/30 is directly connected, eth1, 00:05:21
O   195.11.1.0/24 [110/10] is directly connected, eth0, weight 1, 00:04:39
C>* 195.11.1.0/24 is directly connected, eth0, 00:05:21
```






