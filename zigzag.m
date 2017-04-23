function Z = zigzag(n)
count = 0;
for k = [0:2 * n - 2]
	if (k < n)
	% Deasupra diagonalei secundare
		if (mod(k, 2) == 0)
		% Linie para
			for i = k:-1:0
				Z(i+1, k-i+1)=count;
				count++;
			end
		else
		% Linie impara
			for i = [0:k]
				Z(i + 1, k - i + 1) = count;
				count++;
			end
		end
	else
	% Sub diagonala secundara
		if(mod(k, 2) == 0)
		% Linie para
			for i = [n - 1: -1: k - n + 1]
				Z(i + 1, k - i + 1) = count;
				count++;
			end
		else
		% Linie impara
			for i = [k - n + 1:n - 1]
				Z(i + 1, k - i + 1) = count;
			count++;
			end
		end
	end
end
