action :run do
  execute "KeyRemap4MacBook set #{new_resource.identifier}=#{new_resource.value}" do
    command "#{node['keyremap4macbook']['command_path']} set #{new_resource.identifier} #{new_resource.value}"
  end
end
