#!/bin/sh

ROOT_PATH=/data

chmod +x pkg/usr/bin/*
chmod +x pkg/etc/init.d/shadowsocks
sed -i "s|service_start /usr|service_start $ROOT_PATH/usr|g" pkg/etc/init.d/shadowsocks
sed -i "s|service_stop /usr|service_stop $ROOT_PATH/usr|g" pkg/etc/init.d/shadowsocks

cp -f pkg/gfwlist.conf /tmp/gfwlist.conf
rm -f /etc/dnsmasq.d/gfwlist.conf
ln -sf /tmp/gfwlist.conf /etc/dnsmasq.d/gfwlist.conf

cp -rf pkg/usr $ROOT_PATH
cp -rf pkg/etc /

/etc/init.d/shadowsocks enable
/etc/init.d/shadowsocks restart

/etc/init.d/dnsmasq restart
/etc/init.d/firewall restart

rm -rf pkg
rm -f $0