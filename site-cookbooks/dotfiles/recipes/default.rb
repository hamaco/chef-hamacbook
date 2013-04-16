dotfiles_path = "#{node['user']['home']}/config/dotfiles"

directory node["user"]["home"] + "/config" do
  user node["user"]["name"]
  group node["user"]["group"]
  mode 0755
end

git dotfiles_path do
  user node["user"]["name"]
  group node["user"]["group"]
  repository "git://github.com/hamaco/dotfiles.git"
  reference "master"
  action :sync
end

bash "setup-dotfiles" do
  user node["user"]["name"]
  group node["user"]["group"]
  environment "HOME" => node["user"]["home"]

  code <<-EOH
    cd #{dotfiles_path}
    make cui
  EOH
end
