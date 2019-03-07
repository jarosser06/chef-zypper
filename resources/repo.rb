
chef_version_for_provides '< 14.0' if respond_to?(:chef_version_for_provides)
resource_name :zypper_repo

actions :add, :remove
default_action :add

attribute :repo_name, kind_of: String, name_attribute: true
attribute :autorefresh, kind_of: [TrueClass, FalseClass]
attribute :uri, kind_of: String
attribute :key, kind_of: String, default: nil
attribute :priority, kind_of: Integer, default: nil
attribute :gpg_check, kind_of: [TrueClass, FalseClass], default: true
