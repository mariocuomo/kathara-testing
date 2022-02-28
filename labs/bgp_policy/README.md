# BGP ANNOUNCEMENTS

NETWORK TOPOLOGY

<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/bgp_policy/schema.png">
</div>


Imagine the following situation:<br>
**AS5** wants to be able to reach **AS2**.<br>
**AS5** decides to communicate with **AS2** as long as the packets **_do not pass_** through **AS1**.

You can filter **e-BGP** announcements via the _as-path_!

```Bash
root@s:/# traceroute 185.6.0.2 
traceroute to 185.6.0.2 (185.6.0.2), 30 hops max, 60 byte packets
1  185.1.0.2 (185.1.0.2)  1.552 ms  1.298 ms  1.271 ms
2  185.0.1.2 (185.0.1.2)  1.249 ms  1.205 ms  1.052 ms
3  185.5.0.2 (185.5.0.2)  1.007 ms  0.866 ms  0.767 ms
4  185.0.5.2 (185.0.5.2)  0.742 ms  0.690 ms  0.497 ms
5  185.4.0.2 (185.4.0.2)  0.455 ms  0.313 ms  0.258 ms
6  185.0.4.2 (185.0.4.2)  0.222 ms  1.721 ms  0.090 ms
7  185.6.0.2 (185.6.0.2)  0.151 ms  0.032 ms  0.030 ms
```







