class lab_ntp ($package = $lab_ntp::params::package_name) inherits lab_ntp::params {
	package { $package :
		name   => 'ntp',
		ensure => present,

	}
	#include lab_ntp::params
	include lab_ntp::file
	include lab_ntp::service
}
