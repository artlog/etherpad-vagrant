Vagrant.configure("2") do |config|
  
  config.vm.box = "generic/debian10"
  config.vm.network  "private_network", ip: "33.33.33.10"
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end

 
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "init.pp"
# no such directory only manifests but ...
#    puppet.module_path    = "modules"
  end
    
  config.vm.synced_folder "../", "/home/etherpad/dev/etherpad"

end
