Veewee::Session.declare({
  :cpu_count => '1', :memory_size=> '512',
  :disk_size => '40960', :disk_format => 'VDI', :hostiocache => 'off',
  :os_type_id => 'NetBSD_64',
  :iso_file => "NetBSD-6.1.2-amd64.iso",
  :iso_src => "ftp://ftp.netbsd.org:/pub/NetBSD/iso/6.1.2/NetBSD-6.1.2-amd64.iso",
  :iso_md5 => "c00b686e4ca87edd96417f2cc8e0a8cf",
  :iso_download_timeout => "1000",
  :boot_wait => "60", :boot_cmd_sequence => [
# a - installation in english
    'a<Enter>',
# a - keyboard in english
    'a<Enter>',
# a - install NetBSD to HD
    'a<Enter>',
# b - yes continue
    'b<Enter>',
# yes install on the disk found
    '<Enter>',
# a - full installation
    'a<Enter>',
# a - disk geometry is correct
    'a<Enter>',
# b - use entire disk
    'b<Enter>',
# a - yes install NetBSD bootcode
    'a<Enter>',
# b - use existing partitions
    'b<Enter>',
# x - partition sizes are ok
    'x<Enter>',
# accept disk name
    '<Enter>',
# b - yes continue
    'b<Enter>',
    '<Wait>'*90,
# a - use BIOS console and exit choice menu
    'a<Enter>',
    'x<Enter>',
# a - install from media image
    'a<Enter>',
    '<Wait>'*90,
# hopefully the sets were extracted
    '<Enter>',
    '<Wait>*5',
# a - configure network
    'a<Enter>',
# accept found interface
    '<Enter>',
# autoselect media
    '<Enter>',
# a - use DHCP
    'a<Enter>',
    '<Wait>'*10,
# DNS domain
    '<Enter>',
# hostname
    'vagrant<Enter>',
# a - no IPv6 autoconfiguration
    'a<Enter>',
# a - network configuration is OK
    'a<Enter>',
    '<Wait>'*10,
# a - save network configuration
    'a<Enter>',
# g - activate sshd
    'g<Enter>',
# d - change root password
    'd<Enter>',
    'a<Enter>',
    'vagrant<Enter>',
    'vagrant<Enter>',
    'vagrant<Enter>',
# x - finish
    'x<Enter>',
    '<Enter>',
    '<Wait>'*10,
# e - utility menu
    'e<Enter>',
# a - run /bin/sh
    'a<Enter>',
# mount /
    'mount /dev/wd0a /targetroot<Enter>',
    '<Wait>'*5,
# adjust sshd config
    'echo "PermitRootLogin yes" >> /targetroot/etc/ssh/sshd_config<Enter>',
# umount /
    'umount /targetroot<Enter>',
    '<Wait>'*5,
# exit shell
    'exit<Enter>',
    '<Wait>'*5,
# x - back to main menu
    'x<Enter>',
# d - reboot
    'd<Enter>',
  ],
  :kickstart_port => "7122", :kickstart_timeout => "10000", :kickstart_file => "",
  :ssh_login_timeout => "10000", :ssh_user => "root", :ssh_password => "vagrant", :ssh_key => "",
  :ssh_host_port => "7222", :ssh_guest_port => "22",
  :sudo_cmd => "sh '%f'",
  :shutdown_cmd => "/sbin/halt -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "ruby.sh",
    "puppet.sh",
    "chef.sh",
    "cleanup.sh"
  ],
  :postinstall_timeout => "10000"
})
