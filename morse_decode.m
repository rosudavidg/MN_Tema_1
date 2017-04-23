function x = morse_decode(sir)
	M = morse();
	lungime = length(sir);
	x = M;

	for i = [1: 1: lungime]
	% stanga
		if (sir(i) == '.')
			x = x{2};
		end
	% dreapta
		if (sir(i) == '-')
			x = x{3};
		end
	% caracter invalid
		if (sir(i) ~= '-' && sir(i) ~= '.')
			x = '*';
			return
		end
	% nu exista nod
		if (size(x) == 0)
			x = '*';
			return
		end
	end

	% caracter gasit
	if(length(x) ~= 1)
		x = x{1};
	end

	% input vid
	if (length(x) == 0)
		x = '*';
	end
endfunction
