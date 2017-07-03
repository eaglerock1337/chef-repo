#
# Cookbook Name:: basebuild
# Recipe:: apt
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

apt_update 'update' do
  frequency 86400
  action :periodic
end
