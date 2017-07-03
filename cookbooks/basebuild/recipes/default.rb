#
# Cookbook Name:: basebuild
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# TODO: linux logo and MOTD setup

include_recipe 'basebuild::apt'
include_recipe 'basebuild::install'
include_recipe 'basebuild::netcfg'
include_recipe 'basebuild::usercfg'
