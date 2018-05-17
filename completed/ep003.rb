def prime_factors(n)
    factors = []
    d = 2
    while n > 1 do
        while n % d == 0 do
            factors.unshift(d)
            n /= d
        end
        d += 1
        if d * d > n then
            if n > 1 then
                factors.unshift(n)
            end
            break
        end
    end
    factors
end

number = 600851475143
prime_factors = prime_factors(number)
puts prime_factors.inspect
puts prime_factors.max