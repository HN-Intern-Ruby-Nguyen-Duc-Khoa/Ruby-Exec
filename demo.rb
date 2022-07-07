# class Hockey
#     p self
#     p "***"
#     def legend
#       "Brian Leetch"
#       p self
#     end
# end
# Hockey.new.legend

# module Purr; end 
# class Cat 
#   include Purr 
# end 
# p Cat.ancestors




class Foo 
  def ==(b) 
   return 2 
  end 

  def size() 
    self 
  end 
end

def empty?(s) 
  return s.size == 0 
end

puts empty?(Foo.new).class

-> (a) {p a}["Hello world"]


def get_value(value = 1000)
  value
 end
 
p true ? "true" : "false"
p false ? "true" : "false"
p nil ? "true" : "false"
p  1 ? "true" : "false"
p  0 ? "true" : "false"
p  "false" ? "true" : "false"
p  "" ? "true" : "false"
p  [] ? "true" : "false"