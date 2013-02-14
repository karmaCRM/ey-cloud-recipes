# #
# # Cookbook Name:: database_yml_copy
# # Recipe:: default
# #
# if node[:instance_role].include?('app_master')
#   `cp -f /data/v3_admin_amishtables/current/config/database.yml /data/v3_amishtables/current/config/database.yml`
#   `cp -f /data/v3_admin_amishtables/current/config/database.yml /data/v3_amish_furniture_home/current/config/database.yml`
# end