class Lister < BasicObject
  attr_reader :list
  def intialize
    @list = ""
    @level = 0
  end

  def indent(string)
    " " * @level + string.to_s # !> instance variable @level not initialized
  end

  def method_missing(m, &block)
    @list << indent(m) + ":" # !> instance variable @list not initialized
    @list << "\n"
    @level += 2
    @list << indent(yield(self)) if block
    @level -= 2
    @list << "\n"
    return ""
  end
end

lister = Lister.new
lister.groceries do |item|
  item.name { "Apples" }
  item.quantity { 10 }
  item.name { "Sugar" }
  item.quantity { "1 lb" }
end
lister.freeze do |f|
  f.name { "Ice cream" }
end
lister.inspect do |i|
  i.item { "car" }
end
lister.sleep do |s|
  s.hours { 8 }
end
lister.print do |document|
  document.book { "Chapter 13" }
  document.letter { "to editor" }
end
puts lister.list
