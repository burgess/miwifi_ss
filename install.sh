#!/bin/sh

mkdir -p /userdisk/sysapihttpd/ss/bin
cp -f pkg/ss-redir /userdisk/sysapihttpd/ss/bin
chmod +x /userdisk/sysapihttpd/ss/bin/ss-redir

mkdir -p /userdisk/sysapihttpd/ss/etc
cp -f pkg/ss.json /etc/ss.json

cp -f pkg/gfwlist.conf /userdisk/sysapihttpd/ss/etc/gfwlist.conf
rm -f /etc/dnsmasq.d/gfwlist.conf
ln -sf /userdisk/sysapihttpd/ss/etc/gfwlist.conf /etc/dnsmasq.d/gfwlist.conf

cp -f pkg/firewall.user /etc/firewall.user

cp pkg/ss /etc/init.d/ss
chmod +x /etc/init.d/ss
/etc/init.d/ss enable
/etc/init.d/ss restart

/etc/init.d/dnsmasq restart
/etc/init.d/firewall restart

rm -rf pkg
rm -f $0