str = "Hello"
puts str
str.replace("Goodbye")
puts str

p 1.equal?(1) # true

string1= "aa"
string2= "aa"
p string1.equal?(string2) # false

str = "Hello"
abc = str
str = "Goodbye"
puts str # Goodbye
puts abc # Hellbo

def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
change_string(s)
puts s # new string

s = "Original string content!"
change_string(s.dup)
puts s # original string

s = "Original string content!"
s.freeze
# change_string(s) # runtimeError

numbers = ["one", "two", "three"]
numbers.freeze
# numbers[2] = "four" # runtimeError
numbers[2].replace("four")
p numbers
