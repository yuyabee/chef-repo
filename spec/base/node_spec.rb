require 'spec_helper'

describe file('/etc/profile.d/nvm.sh') do
	it { should be_file }
end

describe command('node -v') do
	let(:disable_sudo) { true }
	let(:pre_command) { "source /home/#{property[:main_user_name]}/.nvm/nvm.sh" }
	its(:stdout) { should match property[:nodejs][:version]}
end
