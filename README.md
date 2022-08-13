# Reactive Controller
1.1 Before Attack <br />
• Started the pox controller on ubuntu using the command
sudo ./pox.py forwarding.l2_learning <br />
which makes it work like a layer 2 learning switch and logs the packets received by the controller to the logfile, which
can be analyzed later. <br />
• Created given topology with the command ”sudo mn –topo single,3 –mac –switch ovsk –controller remote” to create
c0, s1, and h1,h2,h3. <br />
• Served http on port 80 and issued a get request from h2 to h1. The requests completed successfully. <br />
• Dumped switch flows to the console. <br />
1.2 After Attack <br />
• Issued a get request from h2 to h1. The console froze at ”connecting to 10.0.0.1:80” for some time and then displayed
”No route to host” <br />
• Now dumped the switch information and we find that the switched was flooded with the commands issued by h3
breaking the controller. <br />
# Proactive Controller
Before Attack <br />
• Started the POX proactive controller using
./pox.py log.level openflow.of_01 forwarding.topo_proactive openflow.discovery <br />
• Executed proactive hw1.py to create the topology. This code lets the controller issue the IP and adds the switches and
hosts to the topology. <br />
• Assigned the appropriate hostnames and interfaces using dhclient command  <br />
• Served http on port 80 and issued a get request from h2 to h1. <br />
• Dumped switch state on to the console <br />
After Attack <br />
• Again, issued a get request from h2 to h1 <br />
• Dumped switch state on the console <br />
