class puppet::hello (String $target, String $animal)
{
	notify { 'Hello message':
		message => "Hello, ${target}. My favourite animal is the ${animal}",
	}
}