m = "a"
eval("def #{m}; 'Hi!'; end") # => :a
a                                 # => "Hi!"

self                            # => main
a = []                          # => []
a.instance_eval { self }        # => []

class C
  def initialize
    @x = 1
  end
end

c = C.new
c.instance_eval { @x }          # => 1

string = "A sample string"
string.instance_exec("s") { |delim| self.split(delim) } # => ["A ", "ample ", "tring"]
