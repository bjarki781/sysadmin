sudo su
apt install fail2ban python3-ipynotify
cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sed -i 's/bantime  = 10m/bantime  = 1d/' /etc/fail2ban/jail.local
vi /etc/fail2ban/jail.local
systemctl start fail2ban
systemctl enable fail2ban
systemctl status fail2ban

exit
cat >> ~/.ssh/authorized_hosts <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMqi7AAZ9puC0w8PGZcCqnJZqOf5n+RotnGF70N+T4ti bjarki@Smiley5
EOF 
