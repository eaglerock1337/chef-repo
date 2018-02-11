#
# Cookbook Name:: basebuild
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# TODO: linux logo and MOTD setup
# TODO: chef-client cron setup
# TODO: clean up code with foodcritic and whatever that other thing is

include_recipe 'basebuild::apt'
include_recipe 'basebuild::install'
include_recipe 'basebuild::netcfg'
include_recipe 'basebuild::usercfg'
