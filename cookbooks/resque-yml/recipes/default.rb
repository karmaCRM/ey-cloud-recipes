#
# Cookbook Name:: resque-yml
# Recipe:: default
#
redis_instance = node['utility_instances'].find { |instance| instance['name'] == 'redis' }

template "/data/karma2/shared/config/resque.yml" do
  owner 'root'
  group 'root'
  mode 0644
  source "resque.yml.erb"
  variables({ :hostname => redis_instance[:hostname] })
end