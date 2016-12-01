#
# Author:: Eugen Mayer <eugen.mayer@kontextwork.de>
# Installs the available shorewall package and the configuration for shorewall5
# ATTENTION: ensure you install a shorewall5 version!!


# TODO: when apt_fix is implemented more generally include it here
node.default['shorewall']['version'] = 5
package 'shorewall' do
  action :install
end

include_recipe 'shorewall_reloaded::config'