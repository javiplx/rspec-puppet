module Puppet::Parser::Functions
  newfunction(:get_resource, :type => :rvalue) do |arguments|
    [ resource.type , resource.name ] if resource
  end
end
