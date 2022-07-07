# i = 0


# ---- while --------
# while i < 5 do
#     puts "inside of #{i}"
#     i +=1
# end

# begin
#     puts "once"
# end while i < 0


# ---- until ------
# until i>5 do
#     puts  "Inside of #{i}"
#     i+=1
# end

# begin 
#     puts "once"
# end until i > 5


# ------- each -------
# [1,2,3].each{|item| puts item*2}

# (1..5).each do |counter|
#     puts counter*2
# end

# -------- for --------

# for i in 0..2
#     puts "#{i}"
# end

# strings = ["one", "two", "three", "four", "five"]

# a = strings.inject(0) do |sum, str| 
#     next sum if str.size == 5
#     sum + str.size
# end

# puts a

# lặp cho tới khi nhập đúng 3 số thỏa mãn thì thôi
def num 
    for i in 0..3 
        print "Enter a number:"
        num = gets.to_i
        if num % 2 !=0
            redo
        end
        puts "Your number is: #{num}"
    end
end

# num()

begin
    retries ||= 0
    puts "try #{retries}"
    raise "the roof"
rescue 
    retry if (retries += 1) <3  
else
    
end


my_array_num = [1,23,4,5,6,1,2]

a = my_array_num.map{|item|item*2} # giống map trong js
print a

b = my_array_num.select{|item| item % 2==0} # giống filter trong js
print b

my_hash = {"khoa" => "male", "an" => "female"}
c = my_hash.select{|item,gender| gender == 'male'}
print c

# khởi tạo running_total = 0, lặp và cập nhât running_total
d = my_array_num.inject(0){|running_total, item| running_total + item} # => 136 # giống reduce
puts d

