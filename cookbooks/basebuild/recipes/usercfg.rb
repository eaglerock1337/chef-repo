#
# Cookbook Name:: basebuild
# Recipe:: usercfg
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

root_pwd = data_bag_item('basebuild', 'root')
eaglerock_pwd = data_bag_item('basebuild', 'eaglerock')

user 'root' do
  comment 'The Super User'
  password root_pwd['password']
  action :modify
end

user 'eaglerock' do
  comment 'Peter Marks'
  home '/home/eaglerock'
  shell '/bin/bash'
  # group 'eaglerock'
  password eaglerock_pwd['password']
end

group 'sudo' do
  action :modify
  members 'eaglerock'
  append true
end

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
