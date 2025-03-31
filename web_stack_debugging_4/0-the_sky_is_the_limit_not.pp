# Increase ULIMIT of nginx default from 15 to 4096
exec { 'increase_ulimit':
  command => 'sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"/\' /etc/default/nginx',
  path    => ['/bin', '/usr/bin'],
  onlyif  => 'grep \'ULIMIT="-n 15"\' /etc/default/nginx',
}

# Restart nginx
exec { 'restart_nginx':
  command     => 'service nginx restart',
  path        => ['/usr/sbin', '/sbin', '/bin', '/usr/bin'],
  refreshonly => true,
}
