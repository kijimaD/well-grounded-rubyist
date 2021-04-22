string = "Ruby is a cool language."
p string.include?("Ruby")
p string.include?("English")

p "================"
p string.start_with?("Ruby")
p string.end_with?("!!!")

p "================"
p string.empty?
p "".empty? # true
p " ".empty? # false

p "================"
p string.size
p string.count("a")
p string.count("g-m")
# p string.count("g-a") invalid range
p string.count("A-Z")
p string.count("aey. ") # a + e + y + . + (space)
p string.count("^aey. ")
p string.count("^g-m")

p string.count("ag-m")
p string.count("ag-m", "^l") # "a" and "g-m" except for "l"

p "================"
p string.index("cool")
p string.index("l")
p string.rindex("l")

p "================"
p "a".ord
p "abc".ord # a's code
p 97.chr
