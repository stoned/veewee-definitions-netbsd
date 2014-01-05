# Set up Vagrant.
PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/pkg/sbin:/usr/pkg/bin

date > /etc/vagrant_box_build_time

# setup vagrant user
useradd -s /usr/pkg/bin/bash -d /home/vagrant -m -g staff -G wheel -p "$(pwhash vagrant)" vagrant
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /usr/pkg/etc/sudoers.d/vagrant
chmod 0400 /usr/pkg/etc/sudoers.d/vagrant
