require 'spec_helper'

describe package('zsh') do
  it { should be_installed }
end

=begin
It fails!
describe file("/home/#{property[:main_user]}/.zshrc") do
  it { should be_file }
end

if property[:main_user_name] == "c3admin"
  describe file("/home/c3admin/.zshrc") do
    it { should be_file }
  end
else
  describe file("/home/vagrant/.zshrc") do
    it { should be_file }
  end
end
=end

describe "file ~/.zshrc" do
  subject { file "/home/#{property[:main_user_name]}/.zshrc" }
  it { should be_file }

end

describe command('echo $SHELL') do
  it { should return_stdout "/bin/zsh"}
end
