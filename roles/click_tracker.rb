name "click_tracker"
description "Sinatra web app for tracking clicks"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[chef-client]","recipe[sinatra_app]"
  
  
default_attributes({
    "sinatra_app" => {
      "repository" => "git://github.com/CalculatedContent/click-tracker.git",
      "branch" => "master",
      "deploy_dir" => '/home/ubuntu/click-tracker',
      "docroot" => '/home/ubuntu/click-tracker/current',
      "app_name" => 'click_tracker'
    }
  })

