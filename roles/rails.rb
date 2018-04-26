name 'rails'
description 'This role configures a Rails stack using Unicorn'
run_list(
  "role[base]",
  "recipe[rails]",
  "recipe[nginx]",
  "recipe[ruby_build]",
  "recipe[rbenv]",
  "recipe[rails::databases]",
  "recipe[git]",
  "recipe[ssh_deploy_keys]",
  "recipe[postfix]",
  "recipe[rails::env_vars]"
)

default_attributes(
  "nginx" => { "server_tokens" => "off", "package_name" => "nginx-extras", "client_max_body_size" => "10M" },
  "rbenv" => {
    "group_users" => ['deploy']
  },
  "deploy_users" => [
        "deploy"
  ]
)
