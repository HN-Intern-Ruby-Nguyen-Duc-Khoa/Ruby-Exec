
check = true
index = 1
max_avg = 0
list = []
nameOfHighest=""

while check
    p "1 - Fill in student's score"
    p "2 - Print out the max avg score"
    p "3 - List Students"
    p "4 - Print the student's name with highest score"
    p "5 - Out"
    options = gets.to_i

    case options

    when 1
        print "Enter name of Student: "
        name = gets.to_s
        print "Enter math's score of student #{index}: "
        num1 = gets.to_i
        print "Enter lit's score of student #{index}: "
        num2 = gets.to_i
        print "Enter eng's score of student #{index}: "
        num3 = gets.to_i
        index ++
        avg = (num1 + num2 + num3)/3
        
        name = name.sub("\n","")

        student = {}
        student["#{name}"] = {
                "toan": num1,
                "van": num2,
                "anh": num3,
                "avg": avg
        }

        list << student
        if (avg > max_avg)
            max_avg = avg
            nameOfHighest = name
        end
    when 2
        p "The maxinum of avg score is: #{max_avg}" 
    when 3
        p list
    
    when 4

        if(list.length === 0)
            redo
        end
        result = list.select{|item|
            if(item["#{nameOfHighest}"][:avg] === max_avg)
                next item
            end
        }
        p result
    when 5
        check = false
    end
end


