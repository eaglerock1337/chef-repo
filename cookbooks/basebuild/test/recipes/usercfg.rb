# # encoding: utf-8

# Inspec test for recipe basebuild::usercfg

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe command('grep root /etc/passwd') do
  its('stdout') { should match /Super\ User/ }
end

describe user('eaglerock') do
  it { should exist }
  its('groups') { should eq ['eaglerock', 'sudo'] }
  its('home')   { should eq '/home/eaglerock' }
  its('shell')  { should eq '/bin/bash' }
end

describe file('/etc/vim/vimrc') do
  its('content') { should match /source\ \/etc\/vim\/vimrc\.local/ }
end

describe file('/etc/vim/vimrc.local') do
  it { should exist }
  it { should be_owned_by 'root' }
  its('mode')     { should cmp '0644' }
  its('content')  { should match /set\ number/ }
end
