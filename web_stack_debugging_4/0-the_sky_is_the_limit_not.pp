# A puppet that increases the ULIMIT of nginx default from 15 to 4096

exec { 'increase user-limit':
  command => 'sed -i "s/15/4096/" /etc/default/nginx; sudo service nginx restart',
  path    => '/usr/bin/:/usr/sbin:/bin/'
}
