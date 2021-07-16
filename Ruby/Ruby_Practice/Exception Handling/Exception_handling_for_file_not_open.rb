# Check file can open and not and handle error by exception handling ---
begin
    file = open("/unexistant_file")
    if file
        puts "File opend successfully"
    end

rescue
    file = STDIN
end
print file," == ",STDIN,"\n"
