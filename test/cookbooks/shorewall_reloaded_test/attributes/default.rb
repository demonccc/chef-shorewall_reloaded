default[:shorewall][:enabled] = true

default[:shorewall][:interfaces] = [
    {:zone => 'net', :interface => 'eth0', :broadcast=> 'detect', :options =>'dhcp,tcpflags,nosmurfs'}
]

default[:shorewall][:zones] = [
    {:zone => 'fw',:type => 'firewall'},
    {:zone => 'net', :type => 'ipv4'}
]

default[:shorewall][:policy] = [
    {:source => 'fw', :dest => 'all', :policy => :ACCEPT },
    {:source => 'all', :dest => 'all', :policy => :REJECT }
]

node.default[:shorewall][:rules].push({
    :description => 'Incoming SSH to firewall',
    :source => 'all',
    :dest => :fw,
    :proto => :tcp,
    :dest_port => 22,
    :action => :ACCEPT
})

node.default[:shorewall][:config][:ip_forwarding]='Yes'