# p383
module DeCommenter
  def self.decomment(infile, outfile, comment_re = /\A\s*#/)
    infile.each do |inline|
      outfile.print inline unless inline =~ comment_re
    end
  end
end

File.open("1io.rb") do |inf|
  File.open("convert.out", "w") do |outf|
    DeCommenter.decomment(inf, outf)
  end
end

# tf = Tempfile.new("my_temp_file")
# tf

# When you want to write test, no need prepare actual file!

require 'stringio'
string = <<EOM
# This is a comment.
This isn't a comment.
# This is.
   # So is this.
This is also not a comment.
EOM

infile = StringIO.new(string)
infile.read                     # => "# This is a comment.\nThis isn't a comment.\n# This is.\n   # So is this.\nThis is also not a comment.\n"

outfile = StringIO.new('')
outfile.read                    # => ""

DeCommenter.decomment(infile, outfile) # => #<StringIO:0x0000561f76475388>
