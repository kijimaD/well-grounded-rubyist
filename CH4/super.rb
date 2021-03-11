module M
  def report
    puts "module M"
  end
end

class C
  include M

  def report
    puts "Class C"
    puts "trigger next higher-up report method..."
    super
    puts "back from the super call"
  end
end

c = C.new
c.report
