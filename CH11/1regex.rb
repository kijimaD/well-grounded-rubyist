# p330
//.class
# => Regexp

"Match!" if /abc/.match("The alphabet starts with abc.") # => "Match!"
"Match!" if "The alphabet starts with abc.".match(/abc/) # => "Match!"

"Match!" if /abc/ =~ "The alphabet starts with abc." # => "Match!"
"Match!" if "The alphabet starts with abc." =~ /abc/ # => "Match!"

"The alphabet starts with abc" =~ /abc/ # => 25

/abc/.match("The alphabet starts with abc.") # => #<MatchData "abc">
# #<MatchData "abc">

# p334

string = "ABC3934 is a hex number." # => "ABC3934 is a hex number."
string =~ /[^A-Fa-f0-9]/            # => 7

/[0-9]/                         # => /[0-9]/
/\d/                            # => /\d/

# p336
# p337

line_from_file = "Peel, Emma, Mrs., talented amateur" # => "Peel, Emma, Mrs., talented amateur"
/([A-Za-z]+), [A-Za-z]+, (Mrs?\.)/.match(line_from_file) # => #<MatchData "Peel, Emma, Mrs." 1:"Peel" 2:"Mrs.">
"Dear #{$2} #{$1},"                                      # => "Dear Mrs. Peel,"

/a/.match("b")                  # => nil
# nil
