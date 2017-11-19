class puppet::goodbye (String $colour, String $size,)
{
	notify { 'Goodbye message':
		message => "A ${size}, ${colour} goodbye to you",
	}
}