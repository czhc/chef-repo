name             "rails"
maintainer       "Michiel Sikkes"
maintainer_email "michiel@firmhouse.com"
license          "MIT"
description      "Installs/Configures rails"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.4.1"
depends "rbenv", "1.9.0"
depends "sudo", "> 1.2.0"
depends "database"
depends "nginx"
depends "bluepill"
depends "logrotate"
