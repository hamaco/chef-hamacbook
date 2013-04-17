include_recipe "dmg"

dmg_package "ClipMenu" do
  source "https://dl.dropboxusercontent.com/u/1140644/clipmenu/ClipMenu_0.4.3.dmg"
  checksum "6475d0cc95fdbed9f5a08c7d49adb02b"
  action :install
end

dmg_package "DaisyDisk" do
  volumes_dir "DaisyDisk 2"
  source "http://daisydiskapp.com/downloads/DaisyDisk.dmg"
  checksum "9c5e4e5235b0b25b6be355542c6bf96e"
  action :install
end

dmg_package "Dropbox" do
  volumes_dir "Dropbox Installer"
  source "https://dl.dropboxusercontent.com/u/17/Dropbox%202.0.6.dmg"
  checksum "910e9117fdda037736346efcc39c708c"
  action :install
end

dmg_package "Firefox" do
  source "http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/20.0.1/mac/ja-JP-mac/Firefox%2020.0.1.dmg"
  checksum "a4f6bad73ac46e1a5e34918be6630411"
  action :install
end

dmg_package "Google Chrome" do
  dmg_name "googlechrome"
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
  checksum "fadd3864ae1ffab81eaaacf9d7875cda"
  action :install
end

dmg_package "MacVim" do
  volumes_dir "MacVim-Kaoriya"
  source "http://files.kaoriya.net/goto/vim73mac"
  checksum "915d43776f8ab677223d2aab7ca6b272"
  action :install
end

dmg_package "OmniFocus" do
  source "http://downloads2.omnigroup.com/software/MacOSX/10.6/OmniFocus-1.10.4.dmg"
  checksum "773ff5b37e415847685931c253e5384a"
  accept_eula true
  action :install
end

dmg_package "PhpStorm" do
  source "http://download-ln.jetbrains.com/webide/PhpStorm-6.0.dmg"
  checksum "5c3779490a535e3a61c8d88c29cdd2eb"
  action :install
end

dmg_package "Sequel Pro" do
  volumes_dir "Sequel Pro 1.0.1"
  source "http://sequel-pro.googlecode.com/files/sequel-pro-1.0.1.dmg"
  checksum "eec1c05f4dd08acaf8ab409ebdad1fda"
  action :install
end

dmg_package "Skype" do
  source "http://download.skype.com/macosx/Skype_6.3.60.602.dmg"
  checksum "475ab2afb68618a57d3a43104139eb22"
  action :install
end

dmg_package "Vagrant" do
  source "http://files.vagrantup.com/packages/a7853fe7b7f08dbedbc934eb9230d33be6bf746f/Vagrant-1.2.1.dmg"
  checksum "cfbd33c7f2ae47a884b3b99fc90e20b9"
  type "pkg"
  action :install
end


zip_package "1Password" do
  source "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.20.zip"
  checksum "3920778e7282a1a9a06bbf045e82d678"
end

zip_package "AppCleaner" do
  source "http://www.freemacsoft.net/downloads/AppCleaner_2.1.zip"
  checksum "8be8c917e4470e12037004c4b5c29194"
end

zip_package "BetterTouchTool" do
  source "http://www.boastr.de/BetterTouchTool.zip"
  checksum "42d420118bacefd48fcf6b5a7fad25fd"
end

zip_package "Divvy" do
  source "http://mizage.com/downloads/Divvy.zip"
  checksum "42a5b5a8215576ef0d0c77df9b3e7618"
end

zip_package "Eggscellent" do
  source "https://s3.amazonaws.com/eggscellent/betas/Eggscellent_Beta2.zip"
  checksum "725fcc10ae95258a74abbff4f55d62f2"
end

zip_package "HyperSwitch" do
  source "http://bahoom.com/hyperswitch/HyperSwitch.zip"
  checksum "09dc858140d943aeb1e2a4150928ef5b"
end

zip_package "iStat Menus" do
  source "http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.05.zip"
  checksum "24f127eb0083c8d02119f8b4c0247cbb"
end

zip_package "iTerm" do
  source "http://iterm2.googlecode.com/files/iTerm2-1_0_0_20130319.zip"
  checksum "60f2439f871ccc62df14bd968c897688"
end

zip_package "Kobito" do
  source "http://kobito.qiita.com/download/Kobito_v1.2.0.zip"
  checksum "753861da1bd0f9cfeaff394ac9db1ad7"
end

zip_package "SimpleCap" do
  source "http://xcatsan.com/simplecap/download/SimpleCap-1.2.1.zip"
  checksum "6f07f901389ddb4fecff3d22de860c29"
end

zip_package "Transmit" do
  source "http://www.panic.com/transmit/d/Transmit%204.3.3.zip"
  checksum "d72e612e0bb0e624405a3c48195995e3"
end

