#
# Cookbook Name:: postgresql
# Recipe:: service
#

file "/usr/sbin/policy-rc.d" do
  action :delete
end

# define the service
service "postgresql" do
  supports restart: true, stop: true, status: true, reload: true
  action [:enable, :start]
end
