name "cloud_master"
description "Master Node that runs qless and redis-bloomfilter"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[ruby_193]","recipe[s3cmd]","recipe[redisio]","recipe[cloud_crawler::master]","recipe[chef-client]"

