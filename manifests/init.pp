class puppet (String $message, Hash $simple_node_config, Hash $complex_node_config)
{
	##
	#Simple example
	##
	
	notify { 'Initial Message':
		message => $message,
	}
	
	##
	#Example of Simple node config
	##
	$shape=$simple_node_config[$::hostname]
	
	notify { 'Shape message':
		message => "Shape is ${shape}",
	}
	
	##
	#Example of complex node config
	##
	$node_classes=$complex_node_config[$::hostanme]
	if $node_classes['hello'] {
		class {'puppet::hello':
			target => $node_classes['hello']['target'],
			animal => $node_classes['hello']['animal'],
		}
	}
	if $node_classes['goodbye'] {
		class {'puppet::goodbye':
			* => $node_classes['goodbye'],
		}
	}
}