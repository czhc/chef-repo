# install nvm
include_recipe 'nvm'

# install node.js v0.10.5
nvm_install node[:nvm] do
  from_source node[:nvm][:from_source] || false
  alias_as_default node[:nvm][:alias_as_default] || true
  action :create
end