name "click_tracker"
description "Sinatra web app for tracking clicks"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[chef-client]","recipe[sinatra_app]"
  
  
default_attributes({
    "sinatra_app" => {
      "repository" => "git://github.com/CalculatedContent/cloud-monitor.git",
      "branch" => "master",
      "deploy_dir" => '/home/ubuntu/cloud-monitor',
      "docroot" => '/home/ubuntu/cloud-monitor/current',
      "app_name" => 'cloud-monitor'
    }
  })

