class base::ssh {
	case $osfamily{
		'RedHat':{$ssh_name = 'sshd'}
		'Debian':{$ssh_name = 'ssh'}
		default: {fail ('OS not specified in puppet module SSH')}
	}
	#$ssh_name = $osfamily ? {
	#	'RedHat' => 'ssh',
	#	'Debian' => 'sshd',
	#}
	package { 'openssh-package':
		name	=> $ssh_name,
		ensure	=> present,
	}
	file { '/etc/ssh/sshd_config':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		require	=> Package['openssh-package'],
		source	=> 'puppet:///modules/base/sshd_config',
	}
	service { 'openssh-service':
		name		=> $ssh_name,
		ensure		=> running,
		enable		=> true,
		subscribe	=> File['/etc/ssh/sshd_config'],
	}
}
