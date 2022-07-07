

# file = File.new("hello.txt","w+")

p File.read("hello.txt")

p File.readlines("hello.txt")

file = File.open("hello.txt", "w+")

# trong trường hợp là w+ là ghi đè
file.puts("adesád")

# trong trường hợp là a+ là ghi vào cuối

file.close()

# delete
# File.delete("hello.txt")
