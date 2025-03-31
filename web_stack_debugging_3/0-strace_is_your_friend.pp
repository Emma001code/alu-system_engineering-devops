# Fix WordPress 5xx errors by correcting .phpp to .php in wp-settings.php
exec { 'fix_wordpress_server_error':
    command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
    path    => ['/usr/bin', '/bin'],
}
