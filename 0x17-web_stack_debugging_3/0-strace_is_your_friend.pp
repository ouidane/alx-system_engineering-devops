# Puppet manifest to fix Apache 500 error

exec { 'fix-wordpress':
  command => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/g' /var/www/html/wp-settings.php",
  path    => '/usr/local/bin:/bin:/usr/bin',
  onlyif  => "grep -q '.phpp' /var/www/html/wp-settings.php",
}
