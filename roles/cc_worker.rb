name "cc_worker"
description "Worker Node that polls qless queues for work to do"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[ruby_193]","recipe[s3cmd]","recipe[redisio]","recipe[cc_worker]","recipe[chef-client]"
