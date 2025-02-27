# automated puppet fix to find out why Apache is returning a 500 error

exec { 'Fixing 500 error':
  command  => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  provider => shell,
}
