class php {
  if $smtp_host {
    include php::ssmtp
  }

  if $mysqld_host {
    include php::mysqld
  }

  if $memcached_host {
    include php::memcached
  }

  if $redis_host {
    include php::redis
  }

  file { '/phpfarm/inst/php-5.3.29/lib/php.ini':
    ensure => present,
    content => template('php/php.ini.erb')
  }
}
