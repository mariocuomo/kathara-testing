# Random Load Balancing - two way

NETWORK TOPOLOGY

<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/loadBalancer_twoWay/schema.png" height=550>
</div>


Load balancer selects random one server.



Running in load balancer
```Bash
iptables-legacy --table nat --append PREROUTING --destination 100.0.0.2 -p tcp --dport 80 --match statistic --mode random --probability 0.5 --jump DNAT --to-destination 200.0.0.2:80

iptables-legacy --table nat --append PREROUTING --destination 100.0.0.2 -p tcp --dport 80 --match statistic --mode random --probability 0.5 --jump DNAT --to-destination 200.0.0.3:80
```






