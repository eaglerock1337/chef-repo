#
# Cookbook Name:: basebuild
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'basebuild::usercfg' do
  context 'When all attributes are default, on Debian' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'debian', version: '8.5')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    describe user('eaglerock') do
      it 'should set up EagleRock\'s user' do
        expect (subject).to exist
        expect (subject).to belong_to_group('eaglerock')
        expect (subject).to belong_to_group('sudo')
      end
    end

    it 'creates the vim config file' do
      expect (chef_run).to create_file('/etc/vim/vimrc.local')
    end
  end
end