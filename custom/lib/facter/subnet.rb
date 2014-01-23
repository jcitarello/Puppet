require 'ipaddr'

Facter.add("subnet") do
  setcode do
    ipaddr1 = IPAddr.new(Facter.value('ipaddress'))
    mysubnet = ipaddr1.mask(Facter.value('netmask'))
    mysubnet.to_s
  end
end
