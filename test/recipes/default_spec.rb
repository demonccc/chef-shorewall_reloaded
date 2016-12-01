# # encoding: utf-8

# Inspec test for recipe shorewall_reloaded::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

shorewall_config_path = '/etc/shorewall/shorewall.conf'
options = {
  assignment_re: /^\s*([^=]*?)\s*=\s*(.*?)\s*$/,
}
shorewall_config = parse_config_file(shorewall_config_path, options)

describe package('shorewall') do
  it { should be_installed }
end

describe shorewall_config  do
  its('STARTUP_ENABLED') { should eq 'Yes' }
  its('LOGFILE') { should eq '/var/log/messages' }
  its('MULTICAST') { should eq 'No' }
  its('LOGFORMAT') { should eq '"Shorewall:%s:%s:"' }
  its('IP_FORWARDING') { should eq 'Keep' }
  its('LOG_MARTIANS') { should eq 'No' }
  its('LOGTAGONLY') { should eq 'No' }
  its('VERBOSITY') { should eq 1 }
end



