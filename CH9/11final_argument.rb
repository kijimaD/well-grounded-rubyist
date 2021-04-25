class City
  attr_accessor :name, :state, :population
end

def add_to_city_database(name, info)
  c = City.new
  c.name = name
  c.state = info[:state]
  c.population = info[:population]
end

add_to_city_database("New York City",
                     state: "New York",
                     population: 7000000,
                     nickname: "Big Apple")

# named argument
def m(a:, b:)
  p a, b
end
m(a: 1, b: 2)
# m # missing keywords: a, b
# m(a: 1) # missing keywords: b

# default named argument
def m(a: 1, b: 2)
  p a, b
end
p m(a: 10) # put default value in variable b

p "================"
# starred
def m(a: 1, b: 2, **c)
  p a, b, c
end
p m(x: 1, y: 2)

p "================"
def m(x, y, *z, a: 1, b:, **c, &block)
  p x, y, z, a, b, c
end
p m(1, 2, 3, 4, 5, b: 10, p: 20, q: 30)
