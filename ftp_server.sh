#!/usr/bin/env bash
sudo yum -y update
wait
sudo yum -y install vsftpd
wait
sudo systemctl start vsftpd
wait
sudo systemctl enable vsftpd
wait
sudo firewall-cmd --zone=public --permanent --add-port=21/tcp
sudo firewall-cmd --zone=public --permanent --add-service=ftp
sudo firewall-cmd --reload
sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.default
sudo egrep -v '^.*#' /etc/vsftpd/vsftpd.conf | sudo tee /etc/vsftpd/vsftpd.conf
printf "userlist_file=/etc/vsftpd/user_list\nuserlist_deny=NO\n"  | sudo tee -a /etc/vsftpd/vsftpd.conf
sudo systemctl restart vsftpd
echo "FTP setup completed"
#https://phoenixnap.com/kb/how-to-setup-ftp-server-install-vsftpd-centos-7
