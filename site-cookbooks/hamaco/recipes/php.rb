# %w{ 5.3.27 5.4.19 5.5.3 }.each do |version|
%w{5.4.21 5.5.5}.each do |version|
  php_nabe_install version do
    user node["user"]["name"]
    action :install
  end

  %w{ mbstring mysql curl xdebug }.each do |extension|
    php_nabe_extension extension do
      version version
      user node["user"]["name"]
      action :install
    end
  end
end

php_nabe_use "5.4.21" do
  user node["user"]["name"]
  action :run
end

# template node["user"]["home"] + "/app/php-nabe/etc/php.ini" do
#   source "php.ini.erb"
#   owner node["user"]["name"]
#   group node["user"]["group"]
#   mode 0644
# end
