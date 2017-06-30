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

    installed_packages = [
      "vim",
      "net-tools",
      "rsync",
      "glances",
      "htop",
      "lshw"
    ]

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs the necessary packages' do
      installed_packages.each do |name|
        expect(chef_run).to install_package(name)
      end
    end


  end
end
