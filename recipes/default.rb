#
# Cookbook Name:: zaproxy
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "zaproxy::zaproxy_from_#{node['zaproxy']['install_method']}"
include_recipe "zaproxy::zaproxy_service"
