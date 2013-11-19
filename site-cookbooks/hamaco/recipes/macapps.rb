# TODO: AquaSKKってどうやってインストール済みかチェックするの?
# dmg_package "AquaSKK" do
#   source "http://osdn.dl.sourceforge.jp/aquaskk/58814/AquaSKK-4.2.dmg"
#   type "pkg"
#   action :install
# end

include_recipe "macapps::keyremap4macbook"
include_recipe "macapps::clipmenu"
include_recipe "macapps::slate"
include_recipe "macapps::dropbox"
include_recipe "macapps::firefox"
include_recipe "macapps::chrome"
include_recipe "macapps::chrome_canary"
include_recipe "macapps::omnifocus"
include_recipe "macapps::sequel_pro"
include_recipe "macapps::skype"
include_recipe "macapps::virtualbox"
include_recipe "macapps::vagrant"
include_recipe "macapps::sourcetree"

include_recipe "macapps::1password"
include_recipe "macapps::kobito"
include_recipe "macapps::bettertouchtool"
include_recipe "macapps::hyperswitch"
include_recipe "macapps::istat_menus"
include_recipe "macapps::iterm2"
include_recipe "macapps::simplecap"
include_recipe "macapps::transmit"
include_recipe "macapps::alfred"
include_recipe "macapps::archiver"
include_recipe "macapps::scroll_reverser"
include_recipe "macapps::horst"
