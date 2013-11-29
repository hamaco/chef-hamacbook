action :enable do
  execute "KeyRemap4MacBook enable #{new_resource.identifier}" do
    command "#{node['keyremap4macbook']['command_path']} enable #{new_resource.identifier}"
  end
end

action :disable do
  execute "KeyRemap4MacBook disable #{new_resource.identifier}" do
    command "#{node['keyremap4macbook']['command_path']} disable #{new_resource.identifier}"
  end
end
