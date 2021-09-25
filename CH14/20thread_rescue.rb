puts "Trying to read in some files..."
t = Thread.new do
  (0..2).each do  |n|
    begin
      File.open("part0{n}") do |f|
        text << f.readlines
      end
    rescue Errno::ENOENT
      puts "Message from thread: Failed on n=#{n}"
      Thread.exit
    end
  end
end
t.join
puts "Finished!"
# >> Trying to read in some files...
# >> Message from thread: Failed on n=0
# >> Finished!
