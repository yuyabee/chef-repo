actions :create
default_action :create

attribute :version, :kind_of => String, :name_attribute => true
attribute :alias_as_default, :kind_of => [TrueClass, FalseClass],
	:default => false
