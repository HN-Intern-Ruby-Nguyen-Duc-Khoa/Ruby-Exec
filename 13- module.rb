module WarmUp
    def push_ups
        "Phew, I need a break!"
    end
end

class Gym
    include WarmUp
    def preacher_curls
        "I'm building my biceps."
    end
end

p Gym.new.push_ups

# namespace Perimeter
module Perimeter
    class Array
        def initialize
            @size = 400
        end
    end
end

our_array = Perimeter::Array.new
ruby_array = Array.new
p our_array.class
p ruby_array.class

module Gym1
    class Push
        def up
            p 40
        end
    end
end

gym_push = Gym1::Push.new
gym_push.up

# module lồng nhau

module Dojo
    A = 4
    module Kata
        B = 8
        module Roulette
            class ScopeIn
                def push
                    15
                end
            end
        end
    end
end

p "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"

# included callback, extend

module Foo2
    def self.included klass
        puts "Foo2 has been included in class #{klass}"
    end
end
    
class Bar2
    include Foo2
end

# instance class extend Module
module Foo1
    def module_method
        puts "Module Method invoked"
    end
end

class Bar1_1
end

bar1_1 = Bar1_1.new
bar1_1.extend Foo1
bar1_1.module_method

