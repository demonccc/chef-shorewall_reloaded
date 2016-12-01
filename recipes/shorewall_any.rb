# Author:: Eugen Mayer <eugen.mayer@kontextwork.de>
# installs the shorewall version available and pick the configuration version
# using the node[:shorewall][:version] defintion


package "shorewall" do
  action :install
end
include_recipe 'shorewall_reloaded::config'