

class Box
    def initialize w,h
        @width, @height = w,h
    end

    def getWitdh
        @width
    end

    def setWitdh value
        @width = value
    end

    #instance method
    def getArea
        return @width * @height
    end

    #class method
    def self.method1 
        p ""
    end

    def Box.method2 
        p ""
    end

    class << self
        def method3 
            p ""
        end
    end

    protected

    def protected_method
        p "this is protected method"
    end

    private

    def private_method
        p "this is private method"
    end
end

box = Box.new 10,20

p "Get width of box: #{box.getWitdh}"
box.setWitdh 40
p "New width of box: #{box.getWitdh}"
p box.getArea

# box.protected_method #error
# box.private_method #error

class Animal
    def speak
        p "Hello!"
    end
end

class GoodDog < Animal
    attr_accessor :name # attr_accessor
    def initialize n
        self.name = n
    end
    def speak
        p "#{self.name} says arf!"
    end    
end
    
class Cat < Animal

end

sparky = GoodDog.new "Sparky"
paws = Cat.new
puts sparky.speak
    # => Sparky says arf!
puts paws.speak
    # => Hello!


