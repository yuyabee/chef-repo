require 'spec_helper'

describe package('sbcl') do
	it { should be_installed }
end
