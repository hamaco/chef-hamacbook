action :run do
  execute "Seil set #{new_resource.identifier} #{new_resource.value}" do
    command "#{node['seil']['command_path']} set #{new_resource.identifier} #{new_resource.value}"
  end
end
