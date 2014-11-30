
module Puppet::Parser::Functions
  newfunction(:get_module_name, :type => :rvalue) do |arguments|
    parent_module_name
  end
end
