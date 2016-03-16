# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.hostname = "jekyll"
	config.vm.network "forwarded_port", host: 4040, guest: 4000
	#config.vm.network "forwarded_port", host: 8080, guest: 80
	config.vm.provision "shell", path: "bootstrap.sh", privileged: false
	#config.vm.synced_folder ".", "/vagrant", type: "rsync"

	config.ssh.forward_agent = true
end
