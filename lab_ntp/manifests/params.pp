class lab_ntp::params {

	case $::operatingsystem {
		
		'centos' : {
				$template = 'ntp.conf'
				$service_name = 'ntpd'
				$default_servers = [ "10.66.128.2", "10.66.128.3" ]
			   }
		default  : {fail("OS $::operatingsystem is not currently supported")}
	}
	$package_name = "ntp"
}
