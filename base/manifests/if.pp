class base::if{
	if $::hostname =~ /^impothini(\d+)/ {
		notice ("you have arrived at server $0")
	}
}
