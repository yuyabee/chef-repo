default['postgresql']['enable_pgdg_yum']  = true
default['postgresql']['version']          = '9.3'

default['postgresql']['server']['packages'] = ['postgresql93-server']
default['postgresql']['client']['packages'] = ['postgresql93', 'postgresql93-devel']

default['postgresql']['server']['service_name'] = 'postgresql-9.3'

default['postgresql']['pgdg']['repo_rpm_url']['9.3']['centos']['6']['x86_64'] = "http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-centos93-9.3-1.noarch.rpm"

default['postgresql']['config']['data_directory']           = "/var/lib/pgsql/#{default['postgresql']['version']}/data"
default['postgresql']['config']['hba_file']                 = "/var/lib/pgsql/#{default['postgresql']['version']}/data/pg_hba.conf"
default['postgresql']['config']['ident_file']               = "/var/lib/pgsql/#{default['postgresql']['version']}/data/pg_ident.conf"
default['postgresql']['config']['unix_socket_directories']  = '/var/run/postgresql-9.3.pid'
default['postgresql']['config']['unix_socket_directory']    = nil
default['postgresql']['config']['listen_address'] = "*"

default['postgresql']['initdb_locale'] = 'en_US.UTF-8'


default['postgresql']['config_pgtune']['db_type'] = 'web'
default['postgresql']['config_pgtune']['total_memory'] = '1024000kB'
