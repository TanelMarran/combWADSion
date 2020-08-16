var print = "";

for(var i = 0; i < argument_count; i++) {
	print = print + string(argument[i]) + ", ";
}

show_debug_message(print);