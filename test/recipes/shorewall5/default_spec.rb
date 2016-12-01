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
  its('version') { should match /^5\./ }
end

describe file(shorewall_config_path) do
  its('content') { should include 'Shorewall Version 5' }
end

describe shorewall_config  do
  its('DOCKER') { should eq 'Yes' }
  its('IP_FORWARDING') { should eq 'Yes' }
end



