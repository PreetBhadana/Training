#Exception_handling_using_raise_statement.rb

begin
    puts 'I am before the raise'
    raise 'An error has occured'
    puts 'I am after the raise'
rescue 
    puts 'I am rescude'
    
end
puts "I am after the begins block"


# 2

begin
    raise 'A test Exception'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
end