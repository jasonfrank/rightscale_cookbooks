#
# Cookbook Name:: render
# Recipe:: default
# #
# # Copyright 2013, YOUR_COMPANY_NAME
# #
# # All rights reserved - Do Not Redistribute
# #
%w{openjdk-6-jre-headless ntp unzip}.each do |pkg|
       	package pkg do
	          action :install
    end
end

repo do
	action :pull
end
