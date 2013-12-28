require 'spec_helper'

describe file('/usr/local/rbenv/version') do
  it { should contain property[:ruby][:version] }
end

describe command('gem list') do
  let(:path) { '/usr/local/rbenv/bin:/usr/local/rbenv/shims:$PATH' }
	its(:stdout) { should match /bundler/ }
end

describe command('echo $RBENV_ROOT') do
	pending "need to check $RBENV_ROOT"
#	its(:stdout) { should match /\/usr\/local\/rbenv/ }
end
