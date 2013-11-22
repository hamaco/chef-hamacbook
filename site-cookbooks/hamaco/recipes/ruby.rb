git "rbenv" do
  user node["user"]["name"]
  repository "git://github.com/sstephenson/rbenv.git"
  reference "master"
  destination "#{node['user']['home']}/app/rbenv"
  action :sync
end

directory "#{node['user']['home']}/app/rbenv/plugins" do
  owner node["user"]["name"]
  group node["user"]["group"]
  mode "0755"
  action :create
end

git "ruby-build" do
  user node["user"]["name"]
  repository "git://github.com/sstephenson/ruby-build.git"
  reference "master"
  destination "#{node['user']['home']}/app/rbenv/plugins/ruby-build"
  action :sync
end

template "setup-zshenv" do
  path "#{node['user']['home']}/app/rbenv/zshenv" 
  source "rbenv.zshenv.erb"
  owner node["user"]["name"]
  group node["user"]["group"]
  mode "0644"
end

bash "rbenv install ruby-2.0.0-p247" do
  user node["user"]["name"]
  environment "RBENV_ROOT" => "#{node['user']['home']}/app/rbenv"

  code <<-EOH
    source $RBENV_ROOT/zshenv
    rbenv install 2.0.0-p247
  EOH
  not_if { Dir.exists?("#{node['user']['home']}/app/rbenv/versions/2.0.0-p247") }
end

bash "rbenv install ruby-1.9.3-p448" do
  user node["user"]["name"]
  environment "RBENV_ROOT" => "#{node['user']['home']}/app/rbenv"

  code <<-EOH
    source $RBENV_ROOT/zshenv
    rbenv install 1.9.3-p448
  EOH
  not_if { Dir.exists?("#{node['user']['home']}/app/rbenv/versions/1.9.3-p448") }
end

bash "rbenv global 1.9.3-p448" do
  user node["user"]["name"]
  environment "RBENV_ROOT" => "#{node['user']['home']}/app/rbenv"

  code <<-EOH
    source $RBENV_ROOT/zshenv
    rbenv global 2.0.0-p247
    rbenv rehash 2.0.0-p247
  EOH
end
