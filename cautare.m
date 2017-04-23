function sir = cautare(x, c, sir)

	% nod invalid
	if(length(x) == 0)
		sir = '*';
		return ;
	end

	% caracter gasit.
	if(x{1} == c)
		return ;
	end

	% formarea sirurilor
	sir_stanga = sir;
	sir_dreapta = sir;
	sir_stanga(length(sir) + 1) = '.';
	sir_dreapta(length(sir) + 1) = '-';

	sir_stanga = cautare(x{2}, c, sir_stanga);
	sir_dreapta = cautare(x{3}, c, sir_dreapta);

	if(sir_stanga == '*' && sir_dreapta == '*')
		sir = '*';
		return ;
	end

	if(sir_stanga == '*')
		sir = sir_dreapta;
		return ;
	end

	sir = sir_stanga;
endfunction
