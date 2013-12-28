require 'spec_helper'

describe yumrepo('rpmforge') do
	it { should be_enabled }
end
