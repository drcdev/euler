limit = 1000
factor = 1
sum_of_factors = 0

while factor < limit do
	if factor % 3 == 0 or factor % 5 == 0 then
		sum_of_factors += factor
	end
	factor += 1
end
puts sum_of_factors