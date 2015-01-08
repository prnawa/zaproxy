zaproxy_bin_url = node['zaproxy']['binary']['url']

ark 'zaproxy' do
  url zaproxy_bin_url
  version  '2.3.1'
  prefix_root '/opt'
  prefix_home '/opt'
  prefix_bin  '/opt/bin'
  action :install
end