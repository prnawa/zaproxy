install_dir = node['zaproxy']['install_dir']

service "zaproxy" do
    provider Chef::Provider::Service::Upstart
    supports :restart => true, :start => true, :stop => true, :reload => true
    action :nothing
end

template "/etc/init/zaproxy.conf" do
    source "zaproxy.service.conf.erb"
    owner  'root'
    group  'root'
    mode   '0644'
    variables({
        :deploy_dir => install_dir,
        :app_name => 'zaproxy',
        :user => 'root',
        :startup_script => "./zap.sh -daemon",
        :log_location => '/var/log/zaproxy.log'
    })
    notifies :enable, "service[zaproxy]", :delayed
    notifies :start, "service[zaproxy]", :delayed
    notifies :restart, "service[zaproxy]", :delayed
end