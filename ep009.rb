def isPythagoreanTriplet(a, b, c, d)
    if a**2 + b**2 == c**2 and a + b + c == d
        return true
    end
    puts a**2 + b**2
    puts c**2
    puts a+b+c
    puts d
    return false
end

a = 0
b = 0
c = 0
d = 1000
validTriplet = false

until a+b+c>d or validTriplet do
    a += 1
    b = a
    until a+c>d-b or validTriplet do
        b += 1
        c_temp = Math.sqrt(b**2 + a**2)
        if c_temp % 1 == 0
            c = c_temp.to_i
            #puts a.to_s + " + " + b.to_s + " = " + c.to_s
            validTriplet = isPythagoreanTriplet(a, b, c, d)
            #puts validTriplet
        else
            c = c_temp.to_i
        end
    end
end

puts a*b*c