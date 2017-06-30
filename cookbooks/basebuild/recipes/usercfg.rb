#
# Cookbook Name:: basebuild
# Recipe:: usercfg
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

user 'eaglerock' do
  comment 'Peter Marks'
  home '/home/eaglerock'
  shell '/bin/bash'
  group 'eaglerock'
  password '$6$wadHiPYm$MsW0ZwGNLlMpnSB6Fnym1T96XoIcyvXI3nch4.9KSQtsrVqIobmcJIcw3GQWbICCoMCgfjNUX5UFnWIF38fb.0'
end

# TODO: Data bag for password

group 'sudo' do
  action :modify
  members 'eaglerock'
  append true
end

template '/etc/vim/vimrc.local' do
  source  'vimrc.erb'
  owner   'root'
  group   'root'
  mode    '0644'
  variables(
    :tabsize => node['basebuild']['tabsize']
  )
end
