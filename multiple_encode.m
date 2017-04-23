function x = multiple_encode(str)
	% sir vid
	if(size(str) == 0)
		x = '*';
		return ;
	end

	x = '';

	% formarea sirului pentru fiecare litera si adaugarea lui
	for i = [1: 1: length(str)]
		sir = morse_encode(str(i));
		x = [x sir ' '];
	end

	% stergerea ultimului spatiu
	x(length(x)) = '';

endfunction
