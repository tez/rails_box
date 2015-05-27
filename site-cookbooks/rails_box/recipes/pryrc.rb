template ".pryrc" do
  path "#{node['rails_box']['home']}/.pryrc"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end
