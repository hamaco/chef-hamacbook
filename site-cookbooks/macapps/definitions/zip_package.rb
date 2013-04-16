define :zip_package do
  remote_file "#{Chef::Config[:file_cache_path]}/#{params[:name]}.zip" do
    source "#{params[:source]}"
    checksum "#{params[:checksum]}"
    action :create_if_missing
  end

  execute "unzip #{params[:name]}" do
    command "unzip '#{Chef::Config[:file_cache_path]}/#{params[:name]}.zip'"
    cwd "/Applications"
    not_if { ::File.directory?("/Applications/#{params[:name]}.app") }
  end
end
