#Open_File_write_and_each_byte_method.rb
afile  = File.new("test.txt", "r+")
if afile
    afile.syswrite("ABCDEFG")
    afile.each_byte {|ch| putc ch; putc ?.}
else
    puts "Unable to open file!"
end