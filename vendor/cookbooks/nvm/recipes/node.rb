# install nvm
include_recipe 'nvm'

# install node.js v0.10.5s
nvm_install(node[:nvm][:version]) do
  from_source node[:nvm][:from_source] || false
  alias_as_default node[:nvm][:alias_as_default] || true
  action :create
end