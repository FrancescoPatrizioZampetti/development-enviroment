Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Start provisioning..."
  
  config.vm.define "jumpserver" do |jumpserver|
	jumpserver.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
	jumpserver.vm.network "forwarded_port", guest: 22, host: 2222, id: 'ssh', auto_correct: true
	jumpserver.vm.network "public_network", ip: "192.168.1.124"
    jumpserver.vm.box = "rockylinux/9"
	jumpserver.vm.hostname = "jumpserver"
  end	
  config.vm.define "proxy" do |proxy|
    proxy.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
    proxy.vm.box = "rockylinux/9"
    proxy.vm.network "private_network", ip: "10.0.0.3"
    proxy.vm.hostname = "proxy"
  end
  config.vm.define "dbserver" do |dbserver|
    dbserver.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
    dbserver.vm.box = "rockylinux/9"
	dbserver.vm.network "private_network", ip: "10.0.0.4"
    dbserver.vm.hostname = "dbserver"
  end
  config.vm.define "iamserver" do |iamserver|
    iamserver.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
    iamserver.vm.box = "rockylinux/9"
    iamserver.vm.network "private_network", ip: "10.0.0.5"
    iamserver.vm.hostname = "iamserver"
  end
  config.vm.define "cicdserver" do |cicdserver|
    cicdserver.vm.provider "virtualbox" do |v|
		v.memory = 4096
		v.cpus = 4
	end
    cicdserver.vm.box = "rockylinux/9"
	cicdserver.vm.network "private_network", ip: "10.0.0.6"
    cicdserver.vm.hostname = "cicdserver"
  end
  config.vm.define "appserver1" do |appserver1|
    appserver1.vm.provider "virtualbox" do |v|
		v.memory = 2028
		v.cpus = 2
	end	
    appserver1.vm.box = "rockylinux/9"
	appserver1.vm.network "private_network", ip: "10.0.0.7"
    appserver1.vm.hostname = "appserver1"
  end
    config.vm.define "appserver2" do |appserver2|
	appserver2.vm.provider "virtualbox" do |v|
		v.memory = 2028
		v.cpus = 2
	end	
    appserver2.vm.box = "rockylinux/9"
	appserver2.vm.network "private_network", ip: "10.0.0.8"
    appserver2.vm.hostname = "appserver2"
  end
    config.vm.define "appserver3" do |appserver3|
	appserver3.vm.provider "virtualbox" do |v|
		v.memory = 2028
		v.cpus = 2
	end	
	appserver3.vm.box = "rockylinux/9"
	appserver3.vm.network "private_network", ip: "10.0.0.9"
    appserver3.vm.hostname = "appserver3"
  end
    config.vm.define "appserver4" do |appserver4|
	appserver4.vm.provider "virtualbox" do |v|
		v.memory = 2028
		v.cpus = 2
	end	
    appserver4.vm.box = "rockylinux/9"
	appserver4.vm.network "private_network", ip: "10.0.0.10"
    appserver4.vm.hostname = "appserver4"
  end
end