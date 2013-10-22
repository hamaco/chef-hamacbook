include_recipe "dmg"

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



zip_package "1Password 4" do
  source "http://i.agilebits.com/dist/1P/mac4/1Password-4.0.2.zip"
  # checksum "3920778e7282a1a9a06bbf045e82d678"
end
# 
# zip_package "AppCleaner" do
#   source "http://www.freemacsoft.net/downloads/AppCleaner_2.1.zip"
#   # checksum "8be8c917e4470e12037004c4b5c29194"
# end
# 
zip_package "BetterTouchTool" do
  source "http://www.boastr.de/BetterTouchTool.zip"
  # checksum "42d420118bacefd48fcf6b5a7fad25fd"
end

zip_package "HyperSwitch" do
  source "http://bahoom.com/hyperswitch/HyperSwitch.zip"
  # checksum "09dc858140d943aeb1e2a4150928ef5b"
end

zip_package "iStat Menus" do
  source "http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.06.zip"
  # checksum "24f127eb0083c8d02119f8b4c0247cbb"
end

zip_package "iTerm" do
  source "http://www.iterm2.com/downloads/beta/iTerm2-1_0_0_20130811.zip"
  # checksum "60f2439f871ccc62df14bd968c897688"
end
# 
# zip_package "Kobito" do
#   source "http://kobito.qiita.com/download/Kobito_v1.4.0.zip"
#   # checksum "6f8b7245bd0a65a9735a1190d52cf459"
# end
# 
zip_package "SimpleCap" do
  source "http://xcatsan.com/simplecap/download/SimpleCap-1.2.1.zip"
  # checksum "6f07f901389ddb4fecff3d22de860c29"
end

zip_package "Transmit" do
  source "http://www.panic.com/transmit/d/Transmit%204.4.3.zip"
  # checksum "d72e612e0bb0e624405a3c48195995e3"
end

zip_package "Alfred 2" do
  source "http://cachefly.alfredapp.com/Alfred_2.0.9_214.zip"
end

zip_package "Archiver" do
  source "http://commondatastorage.googleapis.com/incrediblebee/apps/Archiver/Archiver.zip"
end
