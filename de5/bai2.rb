def countFreq arr,n
    mp = {}

    i = 0
    while i < n  
        if(mp.has_key?(arr[i].to_s))
            mp["#{arr[i]}"] += 1
        else
            mp["#{arr[i]}"] = 1
        end
        i +=1
    end
    p mp
end


print "Please fill in your length of number: "

length = gets.to_i

i = 0

arr = Array.new

while i < length
    arr << gets.i
    i += 1
end

arr.sort

countFreq(arr,length)

