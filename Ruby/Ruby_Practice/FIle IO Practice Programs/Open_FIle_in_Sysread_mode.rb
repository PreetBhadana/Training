#Open_FIle_in_Sysread_mode
afile = File.new("test.txt", "r")
if afile
    content = afile.sysread(20)
    puts content
else
    puts"Unable to open file"
end