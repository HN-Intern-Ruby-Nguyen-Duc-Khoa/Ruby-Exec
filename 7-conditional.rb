

# def demo_if_short_statement x = 1

#     return p "x is greater than 2" if x >= 2

#     return p "x is 1" if x == 1
#     p "I cannt guest number"
# end

# demo_if_short_statement 3

# def check a 
#     result = (a % 2 == 0)? "event number" : "odd number"
#     p result
# end


# arr =[1,2]

# p "Array is not empty" unless arr.empty? # không rỗng

# p "Array has any value" if arr.any # có bất cứ giá trị nào



# case in
# config = {db: {user: 'admin', password: '123' }}

# case config
# in db: {user:} # pattern
#     put "Connection with #{user}"
# in connection: {username: }
#     put "Connection with #{username}"
# else
#     put "Default"
# end

# users = [{name: 'Khoa', age: 22}, {name: 'An', age: 21} ]

# user.any? {|user| user in {name: "/B/", age: 20...}}