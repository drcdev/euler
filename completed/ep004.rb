def number_is_palindrome(number)
    if (number.to_s.reverse == number.to_s) then
        return true
    else
        return false
    end
end

number_one = 999
largest_palindrome = []
while number_one > 0 do
    number_two = 999
    while number_two > 0 do
        product = number_one * number_two
        if number_is_palindrome(product) then
            largest_palindrome.unshift(product)
        end
        number_two -= 1
    end
    number_one -= 1
end
puts largest_palindrome.max