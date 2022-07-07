
a = [2, 20, 1, "/a", "/c"]
b = [1, "/c/a/","/b","/a",50]
c = 1

# a) b include c?

p b.include? c

# b) print common value in a and b

# result = a.map{|item1| b.find{|item2|item2===item1} }

result = a.map{|item1|
    p item1
    next b.find{|item2|item2===item1}
}
    
result.compact!

p result

