#
# Cookbook Name:: basebuild
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'basebuild::default' do
  context 'When all attributes are default, on Debian 9' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'debian', version: '9')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'install the necessary packages' do
      expect { chef_run }.to include_recipe('basebuild::install')
    end

    it 'configures the network for eagleworld.net' do
      expect { chef_run }.to include_recipe('basebuild::netcfg')
    end

    it 'adds eaglerock to the sudo group' do

    it 'configures vim for all users' do

    it 'configures PS1 for all users' do

  end
end
