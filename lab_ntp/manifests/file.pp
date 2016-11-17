class lab_ntp::file {
	
	$template = $lab_ntp::params::template
	$servers  = $lab_ntp::params::default_servers		
	file { '/etc/ntp.conf':
		ensure	=> file,
		require => Package['ntp'],
		content => template("lab_ntp/${template}.erb"),
	}
}
