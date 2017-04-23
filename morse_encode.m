function x = morse_encode(c)

	M = morse();
	x = '';

% functie de cautare recursiva
	x = cautare(M, c, x);

endfunction
