# p338

string = "My phone number is (123) 555-1234."
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)      # => #<MatchData "(123) 555-1234" 1:"123" 2:"555" 3:"1234">

unless m
  puts "There was no match-sorry."
  exit
end
print "The whole string we started with: " # => nil
m.string                                   # => "My phone number is (123) 555-1234."
print "The entire part of the string that matched: "
puts m[0]
puts "The three captures: "
3.times do |index|
  puts "Capture ##{index + 1}: #{m.captures[index]}"
end
puts "Here's another way to get at the first capture:"
print "Capture #1: "
puts m[1]

m.captures                      # => ["123", "555", "1234"]
m.captures[0]                   # => "123"

/((a)((b)c))/.match("abc")     # => #<MatchData "abc" 1:"abc" 2:"a" 3:"bc" 4:"b">

re = /(?<first>\w+)\s+((?<middle>\w\.)\s+)?(?<last>\w+)/ # => /(?<first>\w+)\s+((?<middle>\w\.)\s+)?(?<last>\w+)/

m_name = re.match("David A. Black")  # => #<MatchData "David A. Black" first:"David" middle:"A." last:"Black">
m_name[:first]                       # => "David"

# p341

m                               # => #<MatchData "(123) 555-1234" 1:"123" 2:"555" 3:"1234">
m.string                        # => "My phone number is (123) 555-1234."
m.pre_match                     # => "My phone number is "
m.post_match                    # => "."
m.begin(2)                      # => 25
m.end(3)                        # => 33

# p343

/\d+/.match("There's a digit here somewh3re...") # => #<MatchData "3">
/\d+/.match("No digits here. Move along.")       # => nil
/\d+/.match("Digits-R-Us 2345")                  # => #<MatchData "2345">

/(\d+)/.match("Digits-R-Us 2345") # => #<MatchData "2345" 1:"2345">

# greedy match ================

string = "abc!def!ghi!"         # => "abc!def!ghi!"
match = /.+!/.match(string)     # => #<MatchData "abc!def!ghi!">
match[0]                        # => "abc!def!ghi!"

/(\d+?)/.match("Digits-R-Us 2345") # => #<MatchData "2" 1:"2">

# p345

/\d+5/.match("Digits-R-Us 2345") # => #<MatchData "2345">

/(\d+)(5)/.match("Digits-R-Us 2345") # => #<MatchData "2345" 1:"234" 2:"5">

/\d{3}-\d{4}/.match("555-1212")                   # => #<MatchData "555-1212">
/\d{3}-\d{4}/.match("555-121 ")                   # => nil

/\d{1, 10}/.match("1")                                       # => nil
/\d{1,10}/.match("1")                                       # => #<MatchData "1">

/\d{3,}/.match("1")                # => nil
/\d{3,}/.match("111")                # => #<MatchData "111">

/([A-Z]){5}/.match("David BLACK") # => #<MatchData "BLACK" 1:"K">
/([A-Z]{5})/.match("David BLACK") # => #<MatchData "BLACK" 1:"BLACK">

# p346
comment_regexp = /^\s*#/                    # => /^\s*#/
comment_regexp.match("  # Pure comment!") # => #<MatchData "  #">
comment_regexp.match(" x = 1  # Pure comment!") # => nil

str = "123 456. 789"
m = /\d+(?=\.)/.match(str)      # => #<MatchData "456">

# p348

str = "This (includeing\nwhat's in parens\n) taks up three lines."
m = /\(.*?\)/m.match(str)       # => #<MatchData "(includeing\nwhat's in parens\n)">

/ # !> possibly useless use of a literal in void context
  \((\d{3})\)
    \s
  (\d{3})
    -
  (\d{4})
/x

/\((\d{3})\)\s(\d{3})-(\d{4})/ # !> possibly useless use of a literal in void context

/ (?<= David\  ) BLACK /x # !> possibly useless use of a literal in void context

str = "a.c"
re = /#{str}/                   # => /a.c/
re.match("a.c")                 # => #<MatchData "a.c">
re.match("abc")                 # => #<MatchData "abc">

Regexp.escape("a.c")            # => "a\\.c"
Regexp.escape("^abc")           # => "\\^abc"

# 文字列だけにしてメソッドでエスケープしたほうがわかりやすい。

# p352

str = "a.c"
re = /#{Regexp.escape(str)}/    # => /a\.c/
re.match("a.c")                 # => #<MatchData "a.c">
re.match("abc")                 # => nil

Regexp.new('(.*)\s+Black')      # => /(.*)\s+Black/

Regexp.new('Mr\. David Black')      # => /Mr\. David Black/
Regexp.new(Regexp.escape("Mr. David Black")) # => /Mr\.\ David\ Black/

/abc/.to_s                      # => "(?-mix:abc)"
/abc/x.to_s                     # => "(?x-mi:abc)"

array = ["1", "111111111111111"]
array.find_all { |e| e.size > 10 and /\d/.match(e) } # => ["111111111111111"]

"testing 1 2 3 testing 4 5 6".scan(/\d/) # => ["1", "2", "3", "4", "5", "6"]

# >> The whole string we started with: The entire part of the string that matched: (123) 555-1234
# >> The three captures:
# >> Capture #1: 123
# >> Capture #2: 555
# >> Capture #3: 1234
# >> Here's another way to get at the first capture:
# >> Capture #1: 123
