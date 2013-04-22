name "web_app"
description "Sinatra web app"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[chef-client]","recipe[sinatra_app]"
