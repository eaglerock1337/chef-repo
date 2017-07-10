#
# Cookbook Name:: basebuild
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'
require 'chefspec'
# require 'serverspec'

# TODO: add data bag code so this shit works

describe 'basebuild::usercfg' do
  context 'When all attributes are default, on Debian' do
    # Data bag setup
    # before do
    #   cookbook_root = File.expand_path('test/integration/data_bags')
    #   Chef::Config[:data_bag_path] = File.join(cookbook_root, '.data_bags')
    # end

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'debian', version: '8.5')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should modify the root user' do
      expect(chef_run).to modify_user('root')
    end

    describe user('eaglerock') do
      it 'should be set up' do
        expect(subject).to exist
        expect(subject).to belong_to_group('eaglerock')
        expect(subject).to belong_to_group('sudo')
      end
    end

    it 'creates the vim config file' do
      expect(chef_run).to create_file('/etc/vim/vimrc.local')
    end
  end
end
