

h = Hash.new

h1 = Hash["a": 1, "b":2]

h2 = {"a": 1, "b":2}

h3 = {"a": 1, "c":3}

p h1 == h2
p h3 < h2

# access hash
p h1[:a]
p h1.keys
p h1.values
p h1[:none]

# 
p Hash.try_convert(h1)
p Hash.try_convert("hello")

h1[:c] = 3

p h1

h1.store "d",4

p h1

h1.each{|key,value| p "#{key}: #{value}"}