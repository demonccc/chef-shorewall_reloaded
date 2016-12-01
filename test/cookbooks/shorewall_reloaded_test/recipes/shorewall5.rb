
# we need this for shorewall 5.x e.g.
apt_repository 'unstable' do
  uri        'http://ftp.de.debian.org/debian'
  distribution 'unstable'
  components ['main']
end

apt_preference 'debian-stable' do
  glob         '*'
  pin          'release o=Debian,a=stable'
  pin_priority '600'
end

apt_preference 'debian-testing' do
  glob         '*'
  pin          'release o=Debian,a=testing'
  pin_priority '-1'
end

apt_preference 'debian-unstable' do
  glob         '*'
  pin          'release o=Debian,a=unstable'
  pin_priority '-1'
end

apt_preference 'shorewall5' do
  glob         'shorewall*'
  pin          'release o=Debian,a=unstable'
  pin_priority '900'
end

include_recipe 'shorewall_reloaded::shorewall5'