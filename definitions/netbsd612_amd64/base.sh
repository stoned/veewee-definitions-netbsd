PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/pkg/sbin:/usr/pkg/bin

# install and setup pkgin
pkg_add http://ftp.NetBSD.org/pub/pkgsrc/packages/NetBSD/amd64/6.1.2/All/pkgin
sed -e 's,^[^#].*$,http://ftp.NetBSD.org/pub/pkgsrc/packages/NetBSD/amd64/6.1.2/All,' /usr/pkg/etc/pkgin/repositories.conf > /usr/pkg/etc/pkgin/repositories.conf.new
mv /usr/pkg/etc/pkgin/repositories.conf.new /usr/pkg/etc/pkgin/repositories.conf
pkgin -y update

# install some packages
pkgin -y install bash sudo wget

# ssh
echo 'UseDNS no' >> /etc/ssh/sshd_config
