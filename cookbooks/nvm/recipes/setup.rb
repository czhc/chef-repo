include_recipe 'git'

############################################################################
# Download nvm

git node['nvm']['directory'] do
  repository node['nvm']['repository']
  reference node['nvm']['reference']
  action :sync
end

#############################################################################
# Install nvm

template '/etc/profile.d/nvm.sh' do
  source 'nvm.sh.erb'
  mode 0755
end
