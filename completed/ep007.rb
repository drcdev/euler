def is_prime(n)
    d = 2
    max = Integer.sqrt(n)
    until d > max do
        if n % d == 0 then
            return false
        end
        d += 1
    end
    return true
end

n = 10001
prime_count = 0
prime = 0
until prime_count == n + 1 do
    prime += 1
    if is_prime(prime) then
        prime_count += 1
    end
end
puts prime