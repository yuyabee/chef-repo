require 'spec_helper'

describe package('zsh') do
  it { should be_installed }
end

describe "file ~/.zshrc" do
  subject { file "/home/#{property[:main_user_name]}/.zshrc" }
  it { should be_file }

end

describe command('echo $SHELL') do
	its(:stdout) { should match /\/bin\/zsh/ }
end
