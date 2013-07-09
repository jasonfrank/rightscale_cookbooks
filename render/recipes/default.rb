#
# Cookbook Name:: render
# Recipe:: default
# #
# # Copyright 2013, YOUR_COMPANY_NAME
# #
# # All rights reserved - Do Not Redistribute
# #
 
# we are relying on other recipes to install apache2

%w{openjdk-6-jre-headless ntp unzip cronolog}.each do |pkg|
       	package pkg do
	          action :install
    end
end

# stuff

directory "/home/webapps/smarturl-render" do
	action :create
	recursive true
end

# configure apache default site
cookbook_file "/etc/apache2/sites-enabled/000-default" do
	source "000-default"
	owner "root"
	group "root"
end

# get the code tarball
#repo do
#	action :pull
#end
