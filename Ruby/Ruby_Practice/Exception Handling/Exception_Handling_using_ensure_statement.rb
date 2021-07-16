#Exception_Handling_using_ensure_statement.rb
begin
    raise 'A test Exception'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
    
ensure
    puts 'Ensuring Exception'
end