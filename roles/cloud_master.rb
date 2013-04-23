name "cloud_master"
description "Master Node that runs qless, redis-bloomfilter, and cloud-monitor"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[ruby_193]","recipe[s3cmd]","recipe[redisio]","recipe[sinatra_app]","recipe[cloud_crawler::master]","recipe[chef-client]"

