class localusers {
	user { 'admin':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		gid    	   => 'wheel',
		managehome => true,
		password   => '$6$.D6.L3YN$xElKED4RUc0y89PdUZK0Yd9EjPin7LRP9V105PWeH4orxrd.7gOFUK6P2AtwF/4oV5h.3sKEQpV9oOl.tEmuk1',		
	}
	user { 'spothini':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		groups 	   => ['wheel', 'finance'],
		managehome => true,
		password   => '$6$.D6.L3YN$xElKED4RUc0y89PdUZK0Yd9EjPin7LRP9V105PWeH4orxrd.7gOFUK6P2AtwF/4oV5h.3sKEQpV9oOl.tEmuk1',
	}
}
