require 'spec_helper'

describe package('vim-enhanced') do
  it { should be_installed }
end

=begin
It fails?
describe file("/home/#{property['main_user_name']}/.vimrc") do
  subject { "/home/#{property[:main_user_name]}/.vimrc" }
  it { should be_file }
end
if property['main_user_name'] == "vagrant"
  describe file("/home/vagrant/.vimrc") do
    it { should be_file }
  end
else
  p property
  describe file("/home/c3admin/.vimrc") do
    it { should be_file }
  end
end
=end

describe "file ~/.vimrc" do
  subject { file "/home/#{property[:main_user_name]}/.vimrc" }
  it { should be_file }
end
