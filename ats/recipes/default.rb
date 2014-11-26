# Install some stuff.
["mysql-client"].each do |pkg|
  package pkg do
    action :install
  end
end

# Replace php.ini file.
template '/etc/php5/apache2/php.ini' do
  source "php.ini.erb"
end

# Replace apache2.conf file.
template '/etc/apache2/apache2.conf' do
  source "apache2.conf.erb"
end
