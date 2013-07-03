#
# Cookbook Name:: render
# Recipe:: default
# #
# # Copyright 2013, YOUR_COMPANY_NAME
# #
# # All rights reserved - Do Not Redistribute
# #
%w{openjdk-6-jre-headless ntp unzip cronolog}.each do |pkg|
       	package pkg do
	          action :install
    end
end

# get the code tarball
repo do
	action :pull
end
