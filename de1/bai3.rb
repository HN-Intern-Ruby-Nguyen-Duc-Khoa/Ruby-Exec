module Min_Ticket
    def min_ticket_need_sell
        "You need sell at least 100 ticket to fly"
    end
end

class Plane

    def initialize num
        @num = num
    end

    def flight_attendant
        "In flight have #{@num} attendant"
    end

    def self.max_fly_speed
        "913 km/h"
    end

    def getNum
        @num
    end

    def setNum num
        @num = num
    end 
end

# a) create vietnam_airline instance of Plane
vietnam_airline = Plane.new 10
p vietnam_airline.flight_attendant

# b) create vietjet instance of Plane
vietjet = Plane.new 20
p vietjet.flight_attendant

# c) print max_speed
p Plane.max_fly_speed

# d) print number of ticket
total = vietnam_airline.getNum + vietjet.getNum
p "Number of ticket need to be sold: #{total}"