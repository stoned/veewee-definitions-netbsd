# Install Chef
PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/pkg/sbin:/usr/pkg/bin
cd /tmp
wget http://curl.haxx.se/ca/cacert.pem
env SSL_CERT_FILE=cacert.pem gem193 install chef --no-ri --no-rdoc
rm cacert.pem
