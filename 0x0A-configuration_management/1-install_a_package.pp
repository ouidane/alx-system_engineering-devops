# install flask from pip3

package {'flask':
ensure   => '2.1.0',
name     => 'flask',
provider => pip3,
}

package {'werkzeug':
ensure   => '2.1.1',
name     => 'Werkzeug',
provider => pip3,
}
