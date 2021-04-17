def open_user_file
  print "File to open: "
  # filename = gets.chomp
  filename = "aaaa"
  fh = File.open(filename)
  yield fh
  fh.close
  rescue
    puts "Couldn't open your file!"
end

open_user_file
