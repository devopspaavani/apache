#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd'


service 'httpd' do
  action [:enable, :start]
end


template '/var/www/html/index.html' do
 source 'index.html.erb'
end

cookbook_file '/var/www/html/sample.html' do
  source 'sample.txt'
end

remote_file '/var/www/html/metadata.html' do
  source 'https://github.com/devopspaavani/apache/blob/master/metadata.rb'
end

template '/var/www/html/sample.txt' do
 source 'sample.txt.erb'
end




