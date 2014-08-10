action :enable do
  execute "Karabiner enable #{new_resource.identifier}" do
    command "#{node['karabiner']['command_path']} enable #{new_resource.identifier}"
  end
end

action :disable do
  execute "Karabiner disable #{new_resource.identifier}" do
    command "#{node['karabiner']['command_path']} disable #{new_resource.identifier}"
  end
end
