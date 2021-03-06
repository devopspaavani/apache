#
# Cookbook:: apache
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::install' do
  

  context 'When all attributes are default, on CentOS 6.9' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.9')
      runner.converge(described_recipe)
    end
    
    it "has the correct default attributes" do
      expect(chef_run.node['apache']['package_name']).to eq('httpd')
    end

    it 'installs the necessary package' do
      expect(chef_run).to install_package('httpd')
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

    it "has the correct default attributes" do
      expect(chef_run.node['apache']['package_name']).to eq('apache2')
    end

    it 'installs the necessary package' do
      expect(chef_run).to install_package('apache2')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

end

