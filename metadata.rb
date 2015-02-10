name                    'shorewall_reloaded'
maintainer		'Claudio Cesar Sanchez Tejeda'
maintainer_email	'demonccc@gmail.com'
license			'Apache 2.0'
description		'Configures and install Shorewall'
long_description	IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version			'0.3.1'

recipe                  'shorewall_reloaded', 'Configures and activates Shorewall firewall'

%w{ debian ubuntu }.each do |os|
  supports os
end
