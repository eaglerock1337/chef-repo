#
# Cookbook Name:: basebuild
# Recipe:: install
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

node['basebuild']['packages'].each do |p|
  package p
end
