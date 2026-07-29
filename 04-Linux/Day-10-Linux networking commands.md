## Day 10 - Linux Networking Commands
## 📌 Objective

Learn and practice commonly used Linux networking commands that help troubleshoot connectivity, inspect network interfaces, resolve DNS, and analyze network routes.

## Commands Practiced
## 1. ifconfig

Displays network interface configuration.

## ifconfig

## Learned
* IP Address
* Netmask
* Broadcast Address
* MAC Address
* RX/TX packets
* Network Interface Status
  
## 2. netstat

Displays active network connections and listening ports.

## netstat

## Learned
* Active TCP connections
* UNIX sockets
* Connection state
* Local and remote addresses
  
## 3. traceroute

Shows the complete path packets travel to a destination.

## traceroute youtube.com

## Learned
* Number of hops
* Router latency
* Network path

## 4. tracepath

Similar to traceroute but works without root privileges.

## tracepath youtube.com

 ## Learned
* Path MTU
* Route information
* Packet path
  
## 5. mtr

Combines ping and traceroute.

## mtr youtube.com

## Learned
* Continuous network monitoring
* Packet loss
* Latency

## 6. nslookup

Queries DNS records.

## nslookup youtube.com

## Learned
* DNS Server
* IPv4 Address
* IPv6 Address

## 7. telnet

Checks connectivity to a remote port.

# telnet youtube.com 80
Observation

Package was not installed.

 # Install using:

sudo apt install telnet

 # 8. hostname

Displays system hostname.

* hostname
* Learned

Shows the current machine name.

# 9. ip

Modern networking command.

# ip address show

# Learned
* Interface details
* IP Address
* Interface Status
  
# 10. ss

Displays socket statistics.

# ss

# Learned
* Active sockets
* TCP/UDP connections
  
# 11. dig

DNS lookup utility.

# dig youtube.com

# Learned
* DNS Query
* Query Time
* Answer Section
* DNS Server
  
# 12. whois

Shows domain registration details.

# whois youtube.com

Observation

Installed using

sudo apt install whois

# 13. nc (Netcat)

Tests network connectivity.

# nc youtube.com 80

Learned

Checks whether a port is reachable.

# 14. arp

Displays the ARP cache.

# arp

# Learned
* IP Address
* MAC Address
* Interface

# 15. ifplugstatus

Checks whether an Ethernet cable is connected.

# ifplugstatus
Observation

Command not installed.

## Key Learnings

* Understood Linux networking basics.
* Explored network interface details.
* Checked active connections.
* Traced packet routes.
* Performed DNS lookups.
* Tested connectivity.
* Learned socket statistics.
* Viewed ARP cache.
* Practiced troubleshooting network issues.

  ## Practice Screenshots

  ![day-10 linux](day-10%20linux.jpeg)

![day-10 linux2](day-10%20linux2.jpeg)

![day-10 llinux3](day-10%20llinux3.jpeg)

![day-10 linux4](day-10%20linux4.jpeg)

![day-10 linux5](day-10%20linux5.jpeg)

![day-10 linux6](day-10%20linux6.jpeg)

![day-10 linux7](day-10%20linux7.jpeg)
