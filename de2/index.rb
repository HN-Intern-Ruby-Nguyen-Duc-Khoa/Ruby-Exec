

class Employee

    @@salary = 3000

    def initialize id,name,position,hour, hourOT=0 
        @id, @name, @position, @hour, @hourOT = id,name,position,hour,hourOT
    end

    def getSalary
        case @position
        when "dev"
            @@salary * @hour + @@salary * 0.15
        when "tester"
            @@salary * @hour + @@salary * 0.1
        else
            @@salary * @hour
        end
    end

    def getOt
        if(@position === "dev" ||  @position === "qa")
            @@salary * 1.5 * @hourOT
        end
        0
    end

    def toString
        p "#{@name} in #{@position} work #{@hour} and work #{@hourOT} OT"
    end

    def getId
        @id
    end

end


list_employees = []
em1 = Employee.new 1,"Khoa","dev",12,13
em2 = Employee.new 2,"John","dev",13,2
em3 = Employee.new 3,"Sara","tester",23

list_employees << em1
list_employees << em2
list_employees << em3

# b)  list all employee
list_employees.each{|employee| employee.toString}

# c) get employee has salary > 5000
result = list_employees.select{|employee|
    ans = employee.getSalary + employee.getOt
    ans
}

result.each{|item| p item.getId}

em4 = Employee.new 4,"crono","tester",23

list_employees << em4