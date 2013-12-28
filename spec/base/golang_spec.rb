require 'spec_helper'

describe package('golang') do
	it { should be_installed }
end

describe command('echo $GOPATH') do
	pending "need to check $GOPATH"
#	its(:stdout) { should match /\/opt\/go/ }
end

describe command('echo $GOBIN') do
	pending "need to check $GOBIN"
#	its(:stdout) { should match /\/opt\/go\/bin/ }
end
