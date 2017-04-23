function x = multiple_decode(sir)
	x = '';
	i = 1;

	% sir vid
	if(size(sir) == 0)
		x = '*';
		return
	end

	while (i <= length(sir))
		litera = '';

		while (sir(i) ~= ' ' && i <= length(sir))
			litera(length(litera) + 1) = sir(i);

		    % sfarsit input
			if(i == length(sir))
				break;
			end
			i = i + 1;
		end

		% formare caracter
		i = i + 1;
		x(length(x) + 1) = morse_decode(litera);
	end

endfunction
