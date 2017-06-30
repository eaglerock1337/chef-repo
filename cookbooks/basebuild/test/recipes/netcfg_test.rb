# # encoding: utf-8

# Inspec test for recipe basebuild::netcfg

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe host('bork.eagleworld.net') do
  it { should be_resolvable }
  its('ipaddress') { should include '10.23.1.162' }
end
