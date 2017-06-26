#
# Cookbook Name:: basebuild
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'basebuild::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'install the necessary packages' do

    it 'configures DNS for eagleworld.net' do

    it 'adds eaglerock to the sudo group' do

    it 'configures vim for all users' do

    it 'configures PS1 for all users' do

  end
end
