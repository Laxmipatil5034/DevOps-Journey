## Day 11 – Networking & System Administration Commands
# 🎯 Objective

Today I learned important Linux networking, system administration, and API utility commands that are widely used by DevOps Engineers for troubleshooting, automation, security, and monitoring.

# 📚 Commands Learned
* route
* nmap
* wget
* watch
* iptables
* curl
* jq

 # Commands Practiced
 
# 1️⃣ Route – Display and Manage Routing Table

# route

Display the system routing table.

# route -n

Show routing table with numeric IP addresses.

# Use Cases

* View network routes
* Troubleshoot connectivity
* Check default gateway
  
# 2️⃣ Nmap – Network Scanner

# nmap localhost

Scan the local machine.

# nmap 192.168.1.1

Scan a remote host.

# nmap -p 22,80 192.168.1.1

Scan specific ports.

# Use Cases

* Discover hosts
* Scan open ports
* Security auditing
* Network troubleshooting

# 3️⃣ Wget – Download Files

# wget https://example.com/file.zip

Download a file.

# wget -c https://example.com/file.zip

Resume interrupted download.

# Use Cases

* Download software packages
* Retrieve configuration files
* Download backups

# 4️⃣ Watch – Execute Command Repeatedly

# watch date

Refresh the output every 2 seconds.

# watch df -h

Monitor disk usage.

# watch free -h

Monitor memory usage.

# Use Cases

* Monitor system resources
* Observe command output in real time
* Track server status
  
# 5️⃣ IPTables – Linux Firewall

View firewall rules

# sudo iptables -L

Allow SSH

# sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Use Cases

* Configure firewall
* Allow or block traffic
* Improve server security
  
# 6️⃣ Curl – Transfer Data

# curl https://example.com

Retrieve webpage content.

# curl -I https://example.com

View HTTP headers.

# curl https://api.github.com

Access REST APIs.

# Use Cases

* Test APIs
* Download web content
* Debug HTTP requests
  
# 7️⃣ JQ – JSON Processor

Pretty print JSON

# cat sample.json | jq

Extract a value

# cat sample.json | jq '.name'

# Use Cases

* Parse JSON
* Process API responses
* Automate scripts
  
## 💡 Key Learnings

* Understood Linux networking commands.
* Learned how to inspect routing information.
* Practiced network scanning using Nmap.
* Downloaded files using wget.
* Monitored system commands in real time with watch.
* Learned basic firewall management using iptables.
* Tested APIs using curl.
* Parsed JSON responses using jq.
  
# Practice Screenshots

# Day 11 - Linux

## Practice Screenshots

### Screenshot 1
# Day 11 - Linux

## Practice Screenshots

# Day 11 - Linux

## Practice Screenshots

### Screenshot 1
![Day 11 Linux 1](day-11%20linux1.jpeg)

### Screenshot 2
![Day 11 Linux 2](day-11%20linux2.jpeg)

### Screenshot 3
![Day 11 Linux 3](day-11%20linux3.jpeg)
