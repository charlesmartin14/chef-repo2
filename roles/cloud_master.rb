name "cloud_master"
description "Master node"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[cloud-crawler::master]","recipe[chef-client]"
