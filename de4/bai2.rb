
require "date"
date_regex = /^\d{2}\/\d{2}\/\d{4}$/ 

date_in = ""
lock = true

while lock
    begin
        print "Please fill in date in: "
        date_in = gets.to_s
        date_in = DateTime.strptime(date_in, "%m/%d/%Y")
    rescue
        if((date_in =~ date_regex))
            p "Please fill in date in format: mm/dd/yyyy"
            retry
        end
    
        if(date_in > DateTime.now)
            p "PLease fill in date_in smaller than today"
            retry
        end
    end
    lock = false
end

year = date_in.strftime("%Y").to_i
year_now = DateTime.now.strftime("%Y").to_i
oT = 0


if (year < year_now)
    nums = year_now - year
    if (nums > 5)
        oT = 14
    elsif (nums > 4)
        oT = 13
    else
        oT = 12
    end
else
    day = date_in.strftime("%d").to_i
    month = date_in.strftime("%m").to_i

    if(day > 10)
        oT = 0.5 + (12-month)
    else
        oT = 1 + (12-month)
    end
end


p "Số ngày nghỉ phép: #{oT}"




