zaproxy_bin_url = node['zaproxy']['binary']['url']
checksum = node['zaproxy']['binary']['checksum']
install_dir = node['zaproxy']['install_dir']

ark 'zaproxy' do
  url zaproxy_bin_url
  home_dir install_dir
  action :install
end