# Install ruby and tools
PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/pkg/sbin:/usr/pkg/bin
pkgin -y install ruby193-rubygems
mkdir -p /usr/local/bin
ln -s /usr/pkg/bin/ruby193 /usr/local/bin/ruby
ln -s /usr/pkg/bin/gem193 /usr/local/bin/gem
