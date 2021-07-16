#Exception_Handling_using_else_statement.rb
begin
    #raise 'A test Exception'
    puts 'I am not raised exception'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect

else
    puts "Congratulation -- no error"    

ensure
    puts 'Ensuring Exception'
end