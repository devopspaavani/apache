#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'pry'


include_recipe 'apache::install'
include_recipe 'apache::configuration'
include_recipe 'apache::service'







   

   
