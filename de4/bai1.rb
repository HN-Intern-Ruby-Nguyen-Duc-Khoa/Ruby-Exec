
require 'date'
regex = /^(2[0-3]|[01]?[0-9]):([0-5]?[0-9])$/

list = []

def check_time(check,check_in,check_out)
   

    if (check > 4 && DateTime.strptime("12:00", "%H:%M") <= check_out && check_out <= DateTime.strptime("13:00", "%H:%M"))
        $LUNCH = "Y"
    else
        $LUCNH = "N"
    end

    if (check >3 && (DateTime.strptime("21:45", "%H:%M") <= check_out) )
        $DINNER = "Y"
    else
        $DINNER = "N"
    end
end


while true
    check_in=""
    check_out=""
    begin
        print "Enter your check in: "
        check_in = gets.to_s
        raise "an exception occurred"
    rescue
        if((check_in =~ regex) != 0)
            p "Please fill in right pattern: hh:mm. Example: 08:00"  
            retry
        end
    end

    begin
        print "Enter your check out: "
        check_out = gets.to_s
        raise "an exception occurred"
    rescue
        if((check_out =~ regex) != 0)
            p "Please fill in right pattern: hh:mm. Example: 08:00"  
            retry
        end
        if(DateTime.strptime(check_in, "%H:%M") >= DateTime.strptime(check_out, "%H:%M"))
            p "Please fill in check out larger than check in"
            retry
        end
    end



    check_in = DateTime.strptime(check_in, "%H:%M")
    check_out = DateTime.strptime(check_out, "%H:%M")
    check = (check_out - check_in)*24.to_i

    check_time(check,check_in,check_out)

    timer = Hash[
        "OT": check,
        "Lunch": $LUNCH,
        "Dinner": $DINNER
    ]
    list << timer

    p list
end


    

