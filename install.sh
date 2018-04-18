echo This file should be used only for reference, do not run it
return

dpkg -i dante_1.4.2-1_amd64.deb

useradd -s /usr/sbin/nologin -M socksuser
echo Enter a password used to connect to the proxy
passwd socksuser

> /var/run/sockd.pid
chown socksuser:socksuser /var/run/sockd.pid

mv sockd.conf /etc/sockd.conf

mv sockd.service /etc/systemd/system/sockd.service
systemctl daemon-reload

service sockd status

