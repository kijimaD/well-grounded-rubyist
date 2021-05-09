[3, 2, 5, 4, 1].sort

def <=>(other_painting)
  self.price <=> other_painting.price
end

# price_sorted = [pa1, pa2, ... pa5].sort

# year_sort = [pa1, pa2, pa3, pa4, pa5].sort do |a, b|
#   a.year <=> b.year
# end

p ["2", 1, 5, "3", 4, "6"].sort { |a, b| a.to_i <=> b.to_i }

p ["2", 1, 5, "3", 4, "6"].sort_by { |a| a.to_i }
