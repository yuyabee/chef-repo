action :create do
	bash "Installing node.js #{new_resource.version}..." do
		code <<-EOH
		#{node['nvm']['source']}
		nvm install #{new_resource.version}
		EOH
	end

	nvm_alias_default new_resource.version do
		action :create
		only_if { new_resource.alias_as_default }
	end

	new_resource.updated_by_last_action(true)
end
