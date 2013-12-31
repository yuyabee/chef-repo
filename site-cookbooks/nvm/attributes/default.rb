default["nvm"]["dependencies"] = ["openssl-devel", "gcc-c++", "git"]
default["nvm"]["install_path"] = "/home/#{node['main_user']}/.nvm"
default["nvm"]["git_repository"] = "git://github.com/creationix/nvm.git"
default["nvm"]["source"] = "source #{node["nvm"]["install_path"]}/nvm.sh"
