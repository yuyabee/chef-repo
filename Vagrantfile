# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_plugin('vagrant-serverspec')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "CentOS-6.4-x86_64-custom"

	config.vm.network :private_network, ip: "192.168.33.20"

	cookbooks = [
		"iptables",
		"ruby",
		"golang",
		"nodejs",
		"sbcl",
		"vim",
		"zsh",
		"postgre"
	]

	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = ["./site-cookbooks", "./cookbooks"]
		chef.run_list = cookbooks
		chef.json = {
			"rpmforge" => {
				"rpm_url" => "http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm"
			},
			"main_user" => "vagrant",
			"main_group" => "vagrant",
			"ruby" => {
				"versions" => ["2.1.1"]
			},
			"nodejs" => {
				"versions" => ["v0.10.24"],
				"default_version" => "v0.10.24"
			},
			"postgresql" => {
				"password" => {
					"postgres" => "postgres"
				}
			}
		}
	end

	config.vm.provision :serverspec do |spec|
		spec.pattern = 'spec/base/*_spec.rb'
	end
end
