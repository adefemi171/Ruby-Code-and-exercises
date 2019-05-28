puts 'A Mini Ticketing System'
puts '------------------------'
ticket = Object.new

# Function to Accept Ticket's Date From User
def ticket.date
    print "Date format is YYYY-MM-DD .\n"
    print "Please Enter Your Ticket Date: "
    return day = gets
end

# Function to Accept Tickets' Venue
def ticket.venue
    print "Type in a Cinema Venue in Lagos: "
    cinema = gets.chomp
    file = 'venue.txt'
    ven = File.readlines(file).each do |line|
        if ven.respond_to?(cinema)
            puts ven.send(cinema)
        else
            puts "No Such Cinema Available"
        end
        # if ven == "SilverBird Cinema"
        #     print "The Venue you picked is #{line}"
        # elsif ven == "Ozone Cinema"
        #     print "The Venue you picked is #{line}"
        # elsif ven == "IMAX Cinema"
        #     print "The Venue you picked is #{line}"
        # elsif ven == "FilmHouse Cinema"
        #     print "The Venue you picked is #{line}"
        # else 
        #     print "No Cinema of Such"
        # end
        
    end
    return ven
end

# Function for Ticket Event

    

print "The date you typed is #{ticket.date} \n"
# print ticket.venue

print "What Info will you like to know? \n"
print "Information desired: "
request = gets.chomp

if ticket.respond_to?(request)
    puts ticket.send(request)
else
    puts "No such information available"
end

