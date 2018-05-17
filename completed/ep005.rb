def check_multiples(n, d)
    d.times do |i|
        if n % (i+1) != 0
            return false
        end
    end
    return true
end

divisor_range = 20
smallest_divisible = divisor_range

until check_multiples(smallest_divisible, divisor_range) do
    smallest_divisible += divisor_range
end
puts smallest_divisible