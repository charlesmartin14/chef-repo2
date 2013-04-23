#
# Cookbook Name:: cloud_crawler
# Recipe:: default
#
# Copyright 2013, Calculated Content
#
# All rights reserved - Do Not Redistribute

include_recipe "cloud_crawler::crawler"

role_query = Chef::Search::Query.new
final_address=[]

role_query.search(:node,'role:cc_master') do | h|
    cc_master_mac_address = h.ec2['network_interfaces_macs'].keys[0]
    cc_master_public_ip_address = h.ec2['network_interfaces_macs'][cc_master_mac_address]['public_ipv4s']
    final_address =cc_master_public_ip_address
end

puts "starting worker using #{final_address} as the queue server"

execute "runCrawler" do
    command "cd /home/ubuntu/apps/cloud-crawler;
    bundle exec /home/ubuntu/apps/cloud-crawler/bin/run_worker.rb -h #{final_address}" 
    action :run
end

