define :zip_package do
  remote_file "#{Chef::Config[:file_cache_path]}/#{params[:name]}.zip" do
    source   "#{params[:source]}"
    checksum "#{params[:checksum]}"
    action   :create_if_missing

    not_if { ::File.directory?("/Applications/#{params[:name]}.app") }
  end

  execute "unzip #{params[:name]}" do
    cwd     "/Applications"
    command "unzip '#{Chef::Config[:file_cache_path]}/#{params[:name]}.zip'"

    not_if { ::File.directory?("/Applications/#{params[:name]}.app") }
  end
end
