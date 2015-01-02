mysql_service 'default' do
  version '5.6'
  initial_root_password 'password'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end
