class user { 'spothini':
        ensure           => 'present',
        uid              => '10000',
        home             => '/home/spothini',
        password_max_age => '60',
        password_min_age => '1',
        shell            => '/bin/bash',
    }
