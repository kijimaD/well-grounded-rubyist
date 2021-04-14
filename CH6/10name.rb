# testless case

class User
  attr_reader :first_name
  attr_reader :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

user = User.new("David", "Black")

case
when user.first_name == "David", user.last_name == "Black"
  puts "You might be David Black."
when Time.now.wday == 5
  puts "You're not David Black, but at least it's Friday!"
else
  puts "You're not David Black, and it's not Friday."
end

# In fact, any casestatement can be written as an if statement.

if user.first_name == "David" or user.last_name == "Black"
  puts "You might be David Black."
elsif Time.now.wday == 5
  puts "You're not David Black, but at least it's Friday!"
else
  puts "You're not David Black, and it's not Friday."
end

# version

puts case
     when user.first_name == "David", user.last_name == "Black"
       puts "You might be David Black."
     when Time.now.wday == 5
       puts "You're not David Black, but at least it's Friday!"
     else
       puts "You're not David Black, and it's not Friday."
     end
