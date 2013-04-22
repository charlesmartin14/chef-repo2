name "cc_master"
description "Master Node that runs qless and redis-bloomfilter"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[cc_master]","recipe[chef-client]"

