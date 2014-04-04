actions :add, :remove
default_action :add

attribute :alias, kind_of: String, name_attribute: true
attribute :autorefresh, kind_of: [TrueClass, FalseClass]
attribute :uri, kind_of: String
