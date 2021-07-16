#Open_FIle_in_Syswrite_or_read+_mode
afile = File.new("test.txt", "r+")
if afile
    afile.syswrite("ABCDEFG")
else
    puts"Unable to open file"
end
