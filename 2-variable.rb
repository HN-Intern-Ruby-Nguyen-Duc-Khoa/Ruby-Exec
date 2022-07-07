#--------------global var ----------------
# $global_variable = 10 # 
# puts "Global variable with #{$global_variable}"

# class Class1 
#     def print_global
#         puts "global variable with #{$global_variable}"
#     end
# end

# obj = Class1.new
# obj.print_global


#--------------scope var ----------------
# name = "Khoa"

# def print_my_name
#     age = 18
#     puts "#{name}" #error
#     puts "my age is #{age}"
# end

# print_my_name
# puts "#{name}"

# ------------------ static var class ---------------
# class Customer
#     @@total = 0

#     def print_total
#         @@total += 1;
#         puts "#{@@total}"

#     end
# end

# _cus1 = Customer.new
# _cus2 = Customer.new

# _cus1.print_total
# _cus2.print_total

#------------ scope class var ----------------
# class Customer2
#     def initialize(id)
#         @id = id
#     end

#     def display()
#         puts "#{@id}"
#     end

#     def incre()
#         @id += 1
#     end
# end

# _cus3 = Customer2.new(1)

# -------------- constant -------------

VAR_CONSTANT = "abc"

class Example 
    VAR_CONSTANT = 150

    def print()
        puts "#{VAR_CONSTANT}"
    end
end

example = Example.new.print()

VAR_CONSTANT = "abcd".freeze # đóng băng địa chỉ

VAR_CONSTANT[0] = "d"

puts "#{VAR_CONSTANT}" #error

# nếu ta thay đổi cả giá trị thì có thể thay đổi được vì đã thay đổi địa chỉ
VAR_CONSTANT = "123"
VAR_CONSTANT[0]= "d"

puts "#{VAR_CONSTANT}"