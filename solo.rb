cookbook_root = File.expand_path(File.dirname(__FILE__))

file_cache_path "/tmp/chef-solo"
# data_bag_path   "/tmp/chef-solo/data_bags"
# encrypted_data_bag_secret "/tmp/chef-solo/data_bag_key"

cookbook_path [
  "#{cookbook_root}/site-cookbooks",
  "#{cookbook_root}/cookbooks"
]
role_path "#{cookbook_root}/roles"
