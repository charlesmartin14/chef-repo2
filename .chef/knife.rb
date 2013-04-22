log_level                :info
log_location             STDOUT
node_name                'charlesmartin14'
client_key               '/Users/charlesmartin14/workspace/chef-repo/.chef/charlesmartin14.pem'
validation_client_name   'chef-validator'
validation_key           '/Users/charlesmartin14/workspace/chef-repo/.chef/chef-validator.pem'
chef_server_url          'https://54.241.86.6'
syntax_check_cache_path  '/Users/charlesmartin14/workspace/chef-repo/.chef/syntax_check_cache'
cookbook_path [ './cookbooks' ]
knife[:aws_ssh_key_id]='cms_aws_3'
knife[:identity_file]="/Users/charlesmartin14/.ssh/cms_aws_3.pem"
knife[:availability_zone]="#{ENV['EC2_AVAILABILITY_ZONE']}"
knife[:aws_access_key_id]="#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key]="#{ENV['AWS_SECRET_ACCESS_KEY']}"
knife[:region]="#{ENV['EC2_REGION']}"
