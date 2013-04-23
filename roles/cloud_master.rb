name "cloud_master"
description "Master node"
run_list "recipe[cloud_crawler::master]"
