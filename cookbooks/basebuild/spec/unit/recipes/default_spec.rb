#
# Cookbook Name:: basebuild
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'basebuild::default' do
  context 'When all attributes are default, on Debian' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'debian', version: '8.5')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'executes the apt recipe' do
      expect(chef_run).to include_recipe('basebuild::apt')
    end

    it 'executes the install recipe' do
      expect(chef_run).to include_recipe('basebuild::install')
    end

    it 'executes the netcfg recipe' do
      expect(chef_run).to include_recipe('basebuild::netcfg')
    end

    it 'executes the usercfg recipe' do
      expect(chef_run).to include_recipe('basebuild::usercfg')
    end

  end
end
