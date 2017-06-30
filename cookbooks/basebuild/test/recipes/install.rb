# # encoding: utf-8

# Inspec test for recipe basebuild::install

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

installed_packages = [
  "vim",
  "net-tools",
  "rsync",
  "glances",
  "htop",
  "lshw"
]

installed_packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end

#describe package('')
