# substring: 部分文字列

string = "Ruby is a cool language."
p string[5]
p string[-12]
p string[5, 10]
p string[7..14]
p string[-12..-3]
p string[15..-1]

p string["cool lang"]
# => "cool lang"
p string["very cool lang"]
# => nil
p string[/c[ol ]+/]

p string
p string.slice!("cool ")
p string
