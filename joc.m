function [] = joc()
scor_pc = 0;
scor_player = 0;
partida = 0;
semn_player = ' ';
semn_pc = ' ';
board = ['*****'; '*   *'; '*   *'; '*   *'; '*****'];

while (~partida)
semn_player = input('Alege caracter [X] SAU [O]:', 's');

	if(semn_player == 'q')
		exit
	end

	while(semn_player ~= 'x' && semn_player ~= 'X' &&
		  semn_player ~= 'o' && semn_player ~= 'O')
		semn_player = input('Alege caracter [X] SAU [O]:', 's');
	end

	if(semn_player == 'x' || semn_player == 'X')
		semn_player = 'X';
		semn_pc = 'O';
	else
	if(semn_player == 'o' || semn_player == 'O')
		semn_player = 'O';
		semn_pc = 'X';
	else
		semn_player = 'X';
		semn_pc = 'O';
	end
	end

win_t(1) = '*';
win_t(2) = semn_player;
win_t(3) = semn_player;
win_t(4) = semn_player;
win_t(5) = '*';

lose_t(1) = '*';
lose_t(2) = semn_pc;
lose_t(3) = semn_pc;
lose_t(4) = semn_pc;
lose_t(5) = '*';

disp(board)

while(true)
	x = input('Dati x si y [1 - 3]:');
	y = input('');

	while (board(x + 1, y + 1) ~= ' ')
		x = input('Dati x si y:');
		y = input('');
	end

	board(x + 1, y + 1) = semn_player;

	if( board(2,:) == win_t || board(3,:) == win_t || board(4,:) == win_t  ||
		board(:,2) == win_t' || board(:,3) == win_t' || board(:,4) == win_t'  ||
	   (board(2,2) == semn_player && board(3,3) == semn_player && board(4,4) == semn_player) ||
	   (board(2,4) == semn_player && board(3,3) == semn_player && board(4,2) == semn_player))

		disp(board);
		board = ['*****'; '*   *'; '*   *'; '*   *'; '*****'];
		scor_player++;
		disp('Ai castigat!');
		break;
	end
	if( board(2,:) == lose_t || board(3,:) == lose_t || board(4,:) == lose_t  ||
		board(:,2) == lose_t' || board(:,3)'' == lose_t || board(:,4) == lose_t'  ||
	   (board(2,2) == semn_pc && board(3,3) == semn_pc && board(4,4) == semn_pc) ||
	   (board(2,4) == semn_pc && board(3,3) == semn_pc && board(4,2) == semn_pc))

		disp(board);
		board = ['*****'; '*   *'; '*   *'; '*   *'; '*****'];
		scor_pc++;
		disp('Ai pierdut!');
		break;
	end

	remiza = 1;
	for i = [1:1:3]
		for j = [1:1:3]
			if(board(i + 1, j + 1) == ' ')
				remiza = 0;
			end
		end
	end

	if(remiza == 1)
		disp(board);
		break;
	end
	random_x = randi([1 3], 1, 1);
	random_y = randi([1 3], 1, 1);
	while (board(random_x + 1, random_y + 1) ~= ' ')
		random_x = randi([1 3], 1, 1);
		random_y = randi([1 3], 1, 1);
	end
	board(random_x + 1, random_y + 1) = semn_pc;
	disp(board);
end
printf('PLAYER: %d\nPC: %d\n', scor_player, scor_pc);

iesire = input('Doriti sa continuati? [Y] [Q]', 's');
while(iesire ~= 'Y' && iesire ~= 'y' && iesire ~= 'q' && iesire ~= 'Q')
	iesire = input('Doriti sa continuati? [Y] [Q]', 's');
end
if(iesire == 'q' || iesire == 'Q')
	partida = 1;
end
end

printf('Scor final:\n');
printf('PLAYER: %d\nPC: %d\nLa revedere!\n', scor_player, scor_pc);
