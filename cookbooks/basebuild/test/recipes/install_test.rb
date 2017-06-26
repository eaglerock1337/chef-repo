# # encoding: utf-8

# Inspec test for recipe basebuild::install

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe package('vim') do
  it { should be_installed }
end

#describe package('')
