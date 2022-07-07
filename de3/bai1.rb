

arr = []
i = 0

while i < 5
    print "Enter a number:"
    num = gets.to_i

    if (num.is_a? Integer)
        arr << num
    elsif (num === "")
        arr << 0
    else
        p "Please fill a number"
        redo
    end

    i += 1
end

p "array is #{arr}"

total = arr.inject(0) do |sum, num|
    sum += num
end

p "Total is #{total}"

# c)
result = Proc.new do |arr|
    ans = arr.map{|item|
        if (item === 7 || item === 6) 
            next item
        end
        next item * item
    }
    "result is #{ans}"
end

p result.call(arr)


