install_dir = node['zaproxy']['install_dir']
config_file = File.join(install_dir, 'xml/config.xml')
ip_address = `ifconfig -a | grep 'inet ' | grep -v 127.0.0.1 | grep -v 10.0.*.*.| cut -d':' -f 2 | cut -d' ' -f 1`.split[0]

template config_file do
    source "zaproxy.config.xml.erb"
    owner  'root'
    group  'root'
    mode   '0644'
    variables({
        :host => ip_address,
        :port => node['zaproxy']['port']
    })
end