
arr = [1,2,3,4,5,6,7,8,9,10]

second_arr = Array.new [1,3,4]

p arr[0]
p arr[2..3]

p arr.first
p arr.last
p arr.at(3)
p arr.take 3 
p arr.include?10


# manipulate
arr.push(3)
arr.unshift(2)
arr.insert(2,13)

p arr.reject{|i| i % 2 == 0}
p arr.sort