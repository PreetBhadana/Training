# Check built-in methods with range

digits  = 0..9
puts digits.include?(9)

ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject{|i| i < 5}
puts "Reject values are :  #{ret}"

digits.each do |digit|
    puts "In Loop #{digit}"
end

