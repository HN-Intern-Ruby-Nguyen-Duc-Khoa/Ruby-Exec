def cal_Sum (a=1, b=[2,3])
    p a
    p b.sum
end

#cal_Sum

#cal_Sum(2,[1,2])


def cal_Sum_1 (a = 2, b= 3, *otherValue) #a,b là 2 tham số bắt buộc, otherValue có thể là 0,1 hoặc rất nhiều agru khác
    puts otherValue
end

#cal_Sum_1(1,23,2,1,2)

# tham số từ khóa, nên sử dụng nhiều
def cal_Sum_2(a: 2, b: 3 )
    p a + b
end

# cal_Sum_2(b:6,a:2)
# cal_Sum_2


# class method, instance method
# class Invoice
#     # class method C1
#     def self.print_out
#         p "Printed out invoice"
#     end

#     #C2
#     def Invoice.print_my_name
#         p "My name"
#     end

#     #C3
#     class <<self

#         def method1 
#             p "method1" 
#         end

#         def method2 
#             p "method2" 
#         end

#     end

#     # instance method
#     def convert_to_pdf
#     "Converted to PD"
#     end
# end


# Invoice.method1
# Invoice.method2

# Invoice.new.convert_to_pdf

# Block, Prod, Lambda

def hello(&block)
    yield 
end

#hello #error
hello do 
    p "abc"
end

# 1.upto(10){|i| p i}
# 1.upto(10) do |x|
#     p x
# end

# Prod

square = Proc.new do |n|
   return n * n
end
square.call(2)
square.call(2,3) # chuyển không đủ không sao


square_2 = lambda {|n| p n}
# nếu proc call trước thì dòng này không được gọi
p square_2.call(2)

#p square_2.call(2,3) #error, phải chuyển đủ tham số







