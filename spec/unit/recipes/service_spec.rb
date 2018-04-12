#
# Cookbook:: apache
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::service' do

  context 'When all attributes are default, on CentOS 6.9' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.9')
      runner.converge(described_recipe)
    end

    it 'starts the necessary service' do
      expect(chef_run).to start_service('httpd')
    end

    it 'enables the necessary service' do
      expect(chef_run).to enable_service('httpd')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'starts the necessary service' do
      expect(chef_run).to start_service('apache2')
    end

    it 'enables the necessary service' do
      expect(chef_run).to enable_service('apache2')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
