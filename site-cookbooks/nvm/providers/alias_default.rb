action :create do
	bash "Alias default node.js version to #{new_resource.version}..." do
		code <<-EOH
		#{node['nvm']['source']}
		nvm alias default #{new_resource.version}
		EOH
	end

	new_resource.updated_by_last_action(true)
end
