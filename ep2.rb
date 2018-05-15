fib_one = 1
fib_two = 1
fib_sum = 0
fib_max = 4000000

while fib_two < fib_max do
    fib_temp = fib_two
    fib_two = fib_one + fib_two
    fib_one = fib_temp
    if fib_two % 2 == 0
        fib_sum += fib_two
    end
end
puts fib_sum