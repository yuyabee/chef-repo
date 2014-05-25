require 'spec_helper'

packages = ['postgresql93-server', 'postgresql93', 'postgresql93-devel']

packages.each do |p|
	describe package(p) do
		it { should be_installed }
	end
end

describe service('postgresql-9.3') do
	it { should be_enabled }
	it { should be_running }
end
