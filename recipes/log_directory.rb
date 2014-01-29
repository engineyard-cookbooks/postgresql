#
# Cookbook Name:: postgresql
# Recipe:: log_directory
#

# ensure log directory exists
directory node["postgresql"]["log_directory"] do
  owner  "postgres"
  group  "postgres"
  mode   "0700"
  recursive true
  not_if "test -f #{node["postgresql"]["log_directory"]}"
end
