default['shorewall']['enabled'] = false

default['shorewall']['default']['options'] = ""
default['shorewall']['default']['wait_interface'] = false
default['shorewall']['default']['startoptions'] = ""
default['shorewall']['default']['restartoptions'] = ""
default['shorewall']['default']['initlog'] = "/dev/null"
default['shorewall']['default']['safestop'] = 0

default['shorewall']['zones'] = [ ]
default['shorewall']['policy'] = [ ]
default['shorewall']['interfaces'] = [ ]
default['shorewall']['hosts'] = [ ]
default['shorewall']['rules'] = [ ]
default['shorewall']['zones'] = [ ]
default['shorewall']['tunnels'] = [ ]
default['shorewall']['masq'] = []

# Examples:

#default[:shorewall][:zones] = [
#    { :zone => "fw", :type => "firewall" },
#    { :zone => "lan", :type => "ipv4" },
#    { :zone => "net", :type => "ipv4" }
#]

#default[:shorewall][:policy] = [
#    { :source => "fw", :dest => "all", :policy => :ACCEPT },
#    { :source => "lan", :dest => "fw", :policy => :REJECT, :log => :DEBUG },
#    { :source => "all", :dest => "all", :policy => :REJECT }
#]

#default[:shorewall][:rules] = [
#    { :description => "Incoming SSH to firewall",
#      :source => "all", :dest => :fw, :proto => :tcp, :dest_port => 22, :action => :ACCEPT }
#]

#default[:shorewall][:zones] = [
#    { :zone => "fw", :type => "firewall" },
#    { :zone => "lan", :type => "ipv4" },
#    { :zone => "net", :type => "ipv4" }
#]

#default[:shorewall][:tunnels] = [
#    { :type => "ipsec", :zone => "net", :gateway => "0.0.0.0/0", :gateway_zones => "vpn" }
#]

#default[:shorewall][:tunnels] = [
#    { :interface => "eth0", :source => "192.168.0.0/24"},
#    { :interface => "eth0:8.8.8.8", :source => "192.168.1.0/24", :address => "1.2.3.4"}
#]

# vim: ai et sts=4 sw=4 ts=4
