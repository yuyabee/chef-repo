require 'spec_helper'

describe command('ruby -v') do
  let(:path) { '/usr/local/rbenv/bin:/usr/local/rbenv/shims:$PATH' }
  it { should return_stdout /2\.0\.0/ }
end

describe file('/usr/local/rbenv/version') do
  it { should contain property[:ruby][:version] }
end

describe command('gem list') do
  let(:path) { '/usr/local/rbenv/bin:/usr/local/rbenv/shims:$PATH' }
  it { should return_stdout /bundler/ }
end

