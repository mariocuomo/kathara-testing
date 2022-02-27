# SYN-FLOOD ATTACK POISONING

NETWORK TOPOLOGY

<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/syn_flood/schema.png" width="800">
</div>


Cindy sends continuous TCP syn packet to the server spoofing its ip address.<br>
Server opens connections for each one and leaks all its memory.

Cindy's malicious script is located in _/var/script/synflood.c_

```C
while true
	sendto(s,  /* our socket */
	            datagram,   /* the buffer containing headers and data */
	            iph->tot_len,  /* total length of our datagram */
	            0,    /* routing flags, normally always 0 */
	            (struct sockaddr *) &sin,  /* socket addr, just like in */
	            sizeof (sin)
	         )/* a normal send() */
```


Simple editing of [@SilverMoon](https://www.binarytides.com/syn-flood-dos-attack/) version.


Using _tcpdump_ and _wireshark_
<div align="center">
  <img src="https://github.com/mariocuomo/kathara-testing/blob/main/labs/syn_flood/sniffing.png">
</div>



