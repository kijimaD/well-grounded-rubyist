o = Object.new

# o.blah # method_missingメソッドが raise

def o.method_missing(m, *args)
  puts "You can't call #{m} on this object; please try again."
end

o.blah
o.blah

# ================

class Student
  def method_missing(m, *args)
    if m.to_s.start_with?("grade_for_")
      # return the appopriate grade, based on parsing the method name
    else
      super
    end
  end
end
s = Student.new
p s.grade_for_3 # nil
p s.grade_forrrrrrr # raise
