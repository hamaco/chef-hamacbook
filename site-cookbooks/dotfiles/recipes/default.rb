dotfiles_path = "#{node['user']['home']}/config/dotfiles"

directory node["user"]["home"] + "/config" do
  user node["user"]["name"]
  group node["user"]["group"]
  mode 0755
end

bash "clone dotfiles" do
  user node["user"]["name"]
  group node["user"]["group"]

  code <<-EOC
    git clone git://github.com/hamaco/dotfiles.git #{dotfiles_path}
  EOC

  not_if { ::File.exist? dotfiles_path }
end

bash "setup dotfiles" do
  user node["user"]["name"]
  group node["user"]["group"]
  environment "HOME" => node["user"]["home"]

  code <<-EOC
    cd #{dotfiles_path}
    make cui mac
  EOC
end
