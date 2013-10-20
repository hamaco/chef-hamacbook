include_recipe "homebrew"

execute "cleanup homebrew" do
  command "/usr/local/bin/brew cleanup || true"
end

package "macvim" do
  options "--HEAD --with-cscope --with-lua --with-luajit"
  action :install
end

package "zsh" do
  options "--disable-etcdir"
  action :install
end

node["brew"]["packages"].each do |pkg|
  package pkg do
    action :install
  end
end

execute "brew linkapps" do
  command "/usr/local/bin/brew linkapps || true"
end
