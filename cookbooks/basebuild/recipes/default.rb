#
# Cookbook Name:: basebuild
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'basebuild::install'
include_recipe 'basebuild::netcfg'

# TODOS:
# packages needed so far: vim net-tools htop lshw glances
# .vimrc for all users by default, includes "set number"
# .vimrc has variables for adjusting tab stops
# /etc/resolv.conf
# testing and spec: test nslookup to chef.eagleworld.net
