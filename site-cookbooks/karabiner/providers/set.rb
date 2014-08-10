action :run do
  execute "Karabiner set #{new_resource.identifier}=#{new_resource.value}" do
    command "#{node['karabiner']['command_path']} set #{new_resource.identifier} #{new_resource.value}"
  end
end
