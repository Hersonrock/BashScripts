#!/bin/bash
yum -y install httpd
systemctl start httpd
firewall-cmd --permanent --add-service=http
firewall-cmd --reload
sudo tee "/var/www/html/index.html" > /dev/null << 'ADDTEXT'
<html>
<body>
<h1 style="color:0000FF;margin-top:20%;margin-left:40%;" >
Welcome to Scripted!
</h1>
</body>
</html>
ADDTEXT

echo "Completed HTTP setup"


