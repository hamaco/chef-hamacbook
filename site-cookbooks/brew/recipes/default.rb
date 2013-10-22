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

execute "sudo sh -c \"echo '/usr/local/bin/zsh' >> /etc/shells\"" do
  not_if "grep /usr/local/bin/zsh /etc/shells"
end

execute 'sudo dscl . -change /Users/hamaco UserShell $(dscl . -read /Users/hamaco UserShell | sed -e "s/UserShell: //") /usr/local/bin/zsh' do
  # TODO: パスワード毎回聞かれて面倒なのですでに設定済ならやらない
end

node["brew"]["packages"].each do |pkg|
  package pkg do
    action :install
  end
end

execute "brew linkapps" do
  command "/usr/local/bin/brew linkapps || true"
end
