class Symbol
  def to_proc # !> method redefined; discarding old to_proc
    puts "In the new Symbol#to_proc!"
    Proc.new { |obj| obj.send(self) }
  end
end

# irb --simple-prompt -I. -r 4to_proc

%w{ david black }.map(&:capitalize) # => ["David", "Black"]
# >> In the new Symbol#to_proc!
