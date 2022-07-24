#! /bin/sh
ip=`ifconfig | grep -w 'inet' | grep -v 127 |grep -v 172|awk '{print $2}'`
echo $ip
sed -i "s/0.0.0.0/$ip/" config.yml
/webdav -c /config.yml
