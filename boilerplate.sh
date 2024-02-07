sudo su
apt install fail2ban
systemctl start fail2ban
systemctl enable fail2ban
systemctl status fail2ban
>> ./authorized_hosts
/etc/ssh/sshd_config password no
