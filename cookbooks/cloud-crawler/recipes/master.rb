include_recipe "cloud-crawler::crawler"
#include_recipe "cloud-crawler::monitor"
node.set['cloud-crawler']['node_type'] = "master"
