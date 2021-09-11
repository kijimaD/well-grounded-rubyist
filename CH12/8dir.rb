d = Dir.new("./")
entries = d.entries             # => ["3exception.rb", "5exception.rb", "xmptmp-outbPTW9u.rb", ".", "8dir.rb", "2io.rb", "1io.rb", "xmptmp-indeoGIE.rb", "..", "6stat.rb", "members.txt", "7dir.rb", "4exception.rb", "data.out", "records.txt"]
entries.delete_if { |entry| entry =~ /^\./ } # => ["3exception.rb", "5exception.rb", "xmptmp-outbPTW9u.rb", "8dir.rb", "2io.rb", "1io.rb", "xmptmp-indeoGIE.rb", "6stat.rb", "members.txt", "7dir.rb", "4exception.rb", "data.out", "records.txt"]
entries.map! { |entry| File.join(d.path, entry) } # => ["./3exception.rb", "./5exception.rb", "./xmptmp-outbPTW9u.rb", "./8dir.rb", "./2io.rb", "./1io.rb", "./xmptmp-indeoGIE.rb", "./6stat.rb", "./members.txt", "./7dir.rb", "./4exception.rb", "./data.out", "./records.txt"]
entries.delete_if { |entry| !File.file?(entry) }  # => ["./3exception.rb", "./5exception.rb", "./xmptmp-outbPTW9u.rb", "./8dir.rb", "./2io.rb", "./1io.rb", "./xmptmp-indeoGIE.rb", "./6stat.rb", "./members.txt", "./7dir.rb", "./4exception.rb", "./data.out", "./records.txt"]
print "Total bytes: "                             # => nil
puts entries.inject(0) { |total, entry| total + File.size(entry) } # => nil

Dir["/home/kijima/Project/ruby/include/r*.h"] # => ["/home/kijima/Project/ruby/include/ruby.h"]
