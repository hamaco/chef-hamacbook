#
# Cookbook Name:: mikutter
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory node["user"]["home"] + "/app" do
  user node["user"]["name"]
  group node["user"]["group"]
  mode 0755
end

git node["user"]["home"] + "/app/mikutter" do
  user node["user"]["name"]
  group node["user"]["group"]
  repository "git://toshia.dip.jp/mikutter.git"
  revision "develop"
  action :sync
end
