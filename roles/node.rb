name 'node'
description 'This role configures a Node stack with nginx'
run_list(
  "role[base]",
  "recipe[sysadmins]",
  "recipe[nvm]",
  "recipe[git]",
  "recipe[ssh_deploy_keys]",
  "recipe[postfix]",
  "recipe[apt::unattended-upgrades]",
  "recipe[chef_nginx]"
)

default_attributes(
  "nginx" => { "server_tokens" => "off" },
  "rbenv" => {
    "group_users" => ['deploy']
  },
  "deploy_users" => [
    "deploy"
  ]
)
