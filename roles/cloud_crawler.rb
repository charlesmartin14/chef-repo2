name "cloud_crawler"
description "Master Node with qless queue and web monitor"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[cloud_crawler]","recipe[chef-client]"

default_attributes({
    "sinatra_app" => {
      "repository" => "git://github.com/CalculatedContent/cloud-monitor.git",
      "branch" => "master",
      "deploy_dir" => '/home/ubuntu/cloud-monitor',
      "docroot" => '/home/ubuntu/cloud-monitor/current',
      "app_name" => 'cloud-monitor'
    }
  })

