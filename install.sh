

useradd -s /usr/sbin/nologin -M socksuser
passwd socksuser

touch /var/run/sockd.pid
chown socksuser:socksuser /var/run/sockd.pid

cp sockd.conf /etc/sockd.conf

cp sockd.service /etc/systemd/system/sockd.service
systemctl daemon-reload

