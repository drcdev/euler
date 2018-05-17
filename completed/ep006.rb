def sum_of_squares (n)
    sum = 0
    n.times do |i|
        sum += (i+1) * (i+1)
    end
    return sum
end

def square_of_sum (n)
    sum = 0
    n.times do |i|
        sum += (i+1)
    end
    return sum * sum
end

number = 100
difference = square_of_sum(number) - sum_of_squares(number)
puts difference