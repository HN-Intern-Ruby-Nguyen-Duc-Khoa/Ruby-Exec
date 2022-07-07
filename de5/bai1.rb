
class String
    def initial
      self[0,1]
    end
end

print "Please fill in your name: "
input = gets.to_s

input.strip!
output = ""

arr = input.split(" ")

name = arr[arr.length - 1].capitalize

output += name

index = 0

while index < (arr.length - 1) do
    item = arr[index].chr.upcase
    output += item
    index += 1
end

p output