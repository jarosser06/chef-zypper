include_recipe 'zypper'

zypper_repo 'SLES11SP3-x64 DVD1 Online' do
  action :remove
end

zypper_repo 'SLES11SP3-x64 DVD1 Online' do
  uri 'http://demeter.uni-regensburg.de/SLES11SP3-x64/DVD1/'
end
