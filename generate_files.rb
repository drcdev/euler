files = Dir["*"].select { |e| File.file?(e) }

min = 0

files.each do |file|
	if file[2..4].to_i > min
		min = file[2..4].to_i
	end
end

puts "The highest created file so far is ep" + min.to_s.rjust(3, '0') + ".rb"

puts "What is the highest file to CREATE?"
max = gets.to_i

(min..max).each do |i|
	system("touch ep" + i.to_s.rjust(3, '0') + ".rb")
end
