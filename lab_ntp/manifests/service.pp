class lab_ntp::service { 
	
	$service_name = $lab_ntp::params::service_name

	service { "ntp_service":
		name	=> $service_name,
		ensure	=> running,
		enable	=> true,
		subscribe	=> File['/etc/ntp.conf'],
	}
	
}
