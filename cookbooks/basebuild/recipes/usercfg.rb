#
# Cookbook Name:: basebuild
# Recipe:: usercfg
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

user 'root' do
  comment 'The Super User'
  password '$6$6DHk3yd7$YRLCcSCjJ3baoLubriTuVDpTQ.WeyAtdG.4RlABayrqVKBrNYYJxqVzV.Rzo051y0KwtAx9yIIyfad2Hkf9oU1'
  action :modify
end

user 'eaglerock' do
  comment 'Peter Marks'
  home '/home/eaglerock'
  shell '/bin/bash'
  # group 'eaglerock'
  password '$6$wadHiPYm$MsW0ZwGNLlMpnSB6Fnym1T96XoIcyvXI3nch4.9KSQtsrVqIobmcJIcw3GQWbICCoMCgfjNUX5UFnWIF38fb.0'
end

# TODO: Data bag for password

group 'sudo' do
  action :modify
  members 'eaglerock'
  append true
end

# TODO: troubleshoot why tabsize variable does not populate correctly

file '/etc/vim/vimrc.local' do
  action  :create
end

template '/etc/vim/vimrc.local' do
  action  :create
  source  'vimrc.erb'
  owner   'root'
  group   'root'
  mode    '0644'
  variables({
    tabsize:  node['basebuild']['tabsize']
  })
end

# TODO: Set up color for all necessary commands (grep, ls, vim, etc.)
