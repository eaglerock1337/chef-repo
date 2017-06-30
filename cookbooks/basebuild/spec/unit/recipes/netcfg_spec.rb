#
# Cookbook Name:: basebuild
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'
require 'serverspec'
set :backend, :exec 

describe 'basebuild::netcfg' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    describe host('bork.eagleworld.net') do
      it 'can resolve the Chef server' do
        expect(subject).to be_resolvable.by('dns')
      end
    end
  end
end
