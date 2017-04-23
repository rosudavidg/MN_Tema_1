function r = baza(sursa, b1, b2)

% Transform <sursa> din baza b1 in baza 10, in <sursa_10>
sursa_10 = 0;
for i = [length(sursa): -1: 1]
	if(sursa(i) >= '0' && sursa(i) <= '9')
		sursa_10 = sursa_10 + (sursa(i) - 48) * b1.^(length(sursa) - i);
	else
		sursa_10 = sursa_10 + (sursa(i) - 87) * b1.^(length(sursa) - i);
	end
end

cifre = 1;
if(b2 > 'a')
	b2 = b2 - 87;
end

% Transform <sursa_10> din baza 10 in baza b2, in <sursa_b2>
while (sursa_10 > 0)
	c = rem(sursa_10, b2);
	if(c >= 10)
		c = c + 87;
	else
		c = c + 48;
	end

	sursa_b2(cifre) = c;
	cifre++;
	sursa_10 = floor(sursa_10/b2);
end

% Inversez numarul <sursa_b2>
sursa_b2 = flip(sursa_b2);

r = char(sursa_b2);
