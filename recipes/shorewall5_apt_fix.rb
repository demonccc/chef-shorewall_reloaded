########### ATTENTION! ################
# this shorewall5 installation is only implemented for debian jessie and this recipe is not included by default
# either you do it yourself or you pick this solution, up to you
# also this does NOT handle upgrades - this is your task. Upgrading from 4.x to 5.x needs manual adjustment

if node[:platform].include?('debian') and node[:platform_version].include?('8.')
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
else
  # TODO: implement this
end

