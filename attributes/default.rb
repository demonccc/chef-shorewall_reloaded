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

# TODO: document which one differ from the OS defaults
# shorewall 4 and 5
default['shorewall']['config']['verbosity']=1
default['shorewall']['config']['log_martians']='No'
default['shorewall']['config']['logfile']='/var/log/messages'
default['shorewall']['config']['logformat']='Shorewall:%s:%s:'
default['shorewall']['config']['logtagonly']='No'
default['shorewall']['config']['docker']='Yes'
default['shorewall']['config']['ip_forwarding']='keep'
# shorewall 5 only
default['shorewall']['config']['log_verbosity']=2
default['shorewall']['config']['startup_log']='/var/log/shorewall-init.log'
default['shorewall']['config']['accounting']='Yes'
default['shorewall']['config']['multicast']='No'


# Examples:

#default[:shorewall][:interfaces] = [
#    {:zone => 'net', :interface => 'eth0', :broadcast=> 'detect', :options =>'dhcp,tcpflags,nosmurfs'}
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
