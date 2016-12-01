
node.default['shorewall']['version'] = 5
include_recipe 'shorewall_reloaded::shorewall5_apt_fix'
include_recipe 'shorewall_reloaded::shorewall5'