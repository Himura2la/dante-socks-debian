dpkg -i dante_1.4.2-1_amd64.deb

useradd -s /usr/sbin/nologin -M socksuser
echo Enter a password used when connecting to the proxy
passwd socksuser

touch /var/run/sockd.pid
chown socksuser:socksuser /var/run/sockd.pid

cp sockd.conf /etc/sockd.conf

cp sockd.service /etc/systemd/system/sockd.service
systemctl daemon-reload

