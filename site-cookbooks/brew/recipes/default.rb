include_recipe "homebrew"

execute "cleanup homebrew" do
  command "/usr/local/bin/brew cleanup || true"
end

node["brew"]["packages"].each do |pkg|
  package pkg do
    action :install
  end
end
