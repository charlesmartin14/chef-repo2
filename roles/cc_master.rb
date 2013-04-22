name "fat_node"
description "Worker Node that polls qless queues for work to do"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[cc_master]","recipe[chef-client]"

#TODO:  not tested yet--need to get working with cloud-monitor on ubuntu
