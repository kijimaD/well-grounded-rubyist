# p378

Dir.glob("info*")               # => []
Dir.glob("*.rb", File::FNM_CASEFOLD) # => ["3exception.rb", "5exception.rb", "xmptmp-outBBYXJY.rb", "8dir.rb", "xmptmp-incJEdw6.rb", "2io.rb", "1io.rb", "9dir.rb", "6stat.rb", "7dir.rb", "4exception.rb"]
