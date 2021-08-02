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

# p354

str = "Leopold Auer was the teacher fof Jascha Heifetz." # => "Leopold Auer was the teacher fof Jascha Heifetz."
violinists = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/) # => [["Leopold", "Auer"], ["Jascha", "Heifetz"]]

violinists.each do |fname, lname|
  puts "#{lname}'s first name was #{fname}."
end

str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/) do |fname, lname|
  puts "#{lname}'s first name was #{fname}."
end

"one two three".scan(/\w+/) { |n| puts "Next number: #{n}" } # => "one two three"
"one two three".scan(/\w+/)                                  # => ["one", "two", "three"]

# p355

require 'strscan'
ss = StringScanner.new("Testing string scanning") # => #<StringScanner 0/23 @ "Testi...">
ss.scan_until(/ing/)            # => "Testing"
ss.pos                          # => 7
ss.peek(7)                      # => " string"
ss.unscan                       # => #<StringScanner 0/23 @ "Testi...">
ss.pos                          # => 0
ss.skip(/Test/)                 # => 4
ss.rest                         # => "ing string scanning"

"Ruby".split(//)                # => ["R", "u", "b", "y"]

line = "first_name=david;last_name=black;country=usa"
record = line.split(/=|;/)      # => ["first_name", "david", "last_name", "black", "country", "usa"]

# p356

data = []
record = Hash[*line.split(/=|;/)]
data.push(record)               # => [{"first_name"=>"david", "last_name"=>"black", "country"=>"usa"}]

"typigraphical error".sub(/i/, "o") # => "typographical error"
"capitalize the first vowel".sub(/[aeiou]/) { |s| s.upcase } # => "cApitalize the first vowel"

"capitalize the every word".gsub(/\b\w/) { |s| s.upcase } # => "Capitalize The Every Word"

"aDvid".sub(/([a-z])([A-Z])/, '\2\1') # => "David"

# p357

"double every word".gsub(/\b(\w+)/, '\1 \1') # => "double double every every word word"

/(abc)/.match("abc")            # => #<MatchData "abc" 1:"abc">
"aDvid".sub(/([a-z])([A-Z])/, "#{$2}#{$1}") # => "abcvid"

# p358

# "Match!" if re.match(string)    # => nil
# "Match!" if string =~ re        # => nil
# "Match!" if re === string       # => nil

answer = "y"
case answer
when /^y/i
  puts "Great!"
when /^n/i
  puts "Bye!"
  exit
else
  "Huh?"
end

["USA", "UK", "France", "Germany"].grep(/[a-z]/) # => ["France", "Germany"]

["USA", "UK", "France", "Germany"].select { |c| /[a-z]/ === c }

["USA", "UK", "France", "Germany"].grep(/[a-z]/) { |c| c.upcase } # => ["FRANCE", "GERMANY"]

[1, 2, 3].grep(/1/)             # => []
"aa".equal?("aa")                     # => false
# p359

# >> The whole string we started with: The entire part of the string that matched: (123) 555-1234
# >> The three captures:
# >> Capture #1: 123
# >> Capture #2: 555
# >> Capture #3: 1234
# >> Here's another way to get at the first capture:
# >> Capture #1: 123
# >> Auer's first name was Leopold.
# >> Heifetz's first name was Jascha.
# >> Auer's first name was Leopold.
# >> Heifetz's first name was Jascha.
# >> Next number: one
# >> Next number: two
# >> Next number: three
# >> Great!
