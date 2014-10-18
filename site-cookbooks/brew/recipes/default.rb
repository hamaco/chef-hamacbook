include_recipe "homebrew"

execute "cleanup homebrew" do
  command "/usr/local/bin/brew cleanup || true"
end

# package "macvim" do
#   options "--HEAD --with-cscope --with-lua --with-luajit --override-system-vim"
#   action :install
# end


package "zsh" do
  options "--disable-etcdir"
  action :install
end

execute "sudo sh -c \"echo '$(brew --prefix zsh)/bin/zsh' >> /etc/shells\"" do
  not_if "grep $(brew --prefix zsh)/bin/zsh /etc/shells"
end

execute 'sudo dscl . -change /Users/hamaco UserShell $(dscl . -read /Users/hamaco UserShell | sed -e "s/UserShell: //") $(brew --prefix zsh)/bin/zsh' do
  not_if "dscl . -read /Users/hamaco UserShell | grep $(brew --prefix zsh)/bin/zsh"
end


package "mysql" do
  action :install
end

execute "enable-mysql" do
  command <<-EOH
    ln -sfv $(brew --prefix mysql)/*.plist ~/Library/LaunchAgents/
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
  EOH

  not_if "launchctl list | grep homebrew.mxcl.mysql"
end

homebrew_tap 'homebrew/binary'
package "packer" do
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
