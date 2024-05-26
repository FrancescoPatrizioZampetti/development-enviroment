Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Start provisioning..."
  
  config.vm.define "jumphost" do |jumphost|
	jumphost.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
	jumphost.vm.network "forwarded_port", guest: 22, host: 2222, id: 'ssh', auto_correct: true
	jumphost.vm.network "public_network", ip: "192.168.1.124"
    jumphost.vm.box = "rockylinux/9"
	jumphost.vm.hostname = "jumphost"
  end
  config.vm.define "proxy" do |proxy|
  	proxy.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
    proxy.vm.box = "rockylinux/9"
	proxy.vm.network "private_network", ip: "10.0.0.2"
    proxy.vm.hostname = "proxy"
  end	
  config.vm.define "web" do |web|
    web.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
    web.vm.box = "rockylinux/9"
    web.vm.network "private_network", ip: "10.0.0.3"
    web.vm.hostname = "web"
  end
  config.vm.define "db" do |db|
    db.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
    db.vm.box = "rockylinux/9"
	db.vm.network "private_network", ip: "10.0.0.4"
    db.vm.hostname = "db"
  end
  config.vm.define "iam" do |iam|
    iam.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
    iam.vm.box = "rockylinux/9"
    iam.vm.network "private_network", ip: "10.0.0.5"
    iam.vm.hostname = "iam"
  end
  config.vm.define "cicd" do |cicd|
    cicd.vm.provider "virtualbox" do |v|
		v.memory = 4096
		v.cpus = 4
	end
    cicd.vm.box = "rockylinux/9"
	cicd.vm.network "private_network", ip: "10.0.0.6"
    cicd.vm.hostname = "cicd"
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