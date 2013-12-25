require 'spec_helper'

describe package('golang') do
	it { should be_installed }
end
