# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "CentOS-6.4-x86_64-custom"

  config.vm.network :private_network, ip: "192.168.33.20"

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["./site-cookbooks", "./cookbooks"]
		chef.run_list = ["yum::epel", "rpmforge", "rbenv::system", "ruby_build", "ruby", "golang", "sbcl", "vim", "zsh"]
		chef.json = {
			"rpmforge" => {
				"rpm_url" => "http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm"
			},
			"main_user" => "vagrant",
			"main_group" => "vagrant",
			"ruby" => {
				"versions" => ["2.0.0-p353"]
			}
		}
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { :mysql_password => "foo" }
  end
end
