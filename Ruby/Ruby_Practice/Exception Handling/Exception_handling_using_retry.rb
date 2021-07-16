#Exception_handling_using_retry.rb
begin
    file = open("/unexistant_file")
    if file
        puts "File opend successfully"
    end

rescue
    fname = "test.txt"
    retry
end