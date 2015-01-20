name "redis"
description "This role configures redis"

run_list *%w[
  role[base]
  recipe[redisio]
  recipe[redisio::enable]
]

default_attributes({})