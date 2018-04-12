#
# Cookbook:: apache
# Recipe:: configuration
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'pry'



template node['apache']['document_root'] + 'index.html' do
  source 'index.html.erb'
end

# template '/etc/httpd/conf/httpd.conf' do
#   action :create
#   source 'httpd.conf.erb'
#   notifies :restart, 'service[httpd]'
# end 
