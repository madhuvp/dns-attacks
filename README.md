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
