# frozen_string_literal: true

# Ticket Object

ticket = Object.new

# Ticket Date Function
def ticket.date
  '1903-01-02'
end

# Ticket Venue Function
def ticket.venue
  'Town Hall'
end

# Ticket Event Function
def ticket.event
  "Author's Reading"
end

# Ticket Performer Function
def ticket.performer
  'Mark Twain'
end

# Ticket Seat Function
def ticket.seat
  'Second Balcony, row J, Seat 12'
end

# Ticket Price Function
def ticket.price
  5.50
end

# Ticket Availability Function
def ticket.availability_status
  'Sold'
end

# Ticket Available T/F Function
def ticket.available?
  false
end

if ticket.available?
  puts 'You are in luck!'
else
  puts 'Sorry-- that seat has been sold.'
end

# Exercise 2
def ticket.print_details(*val)
  val.each { |detail| puts "This ticket is #{detail}" }
end

print 'This Ticket is for: '
print ticket.event + ' at '
print ticket.venue + ', on '
print ticket.date + '.'
print 'The Performer is '
puts ticket.performer + '.'
print 'The seat is '
print ticket.seat + '.'
print 'and it costs $'
puts '%.2f.' % ticket.price + ".\n"
p ticket.print_details("This ticket is non-refundable.", "This ticket is non-transferrable.", "This ticket is in non-smoking section.")
# Using String Interpolation
puts "This ticket is for: #{ticket.event}, at #{ticket.venue}.\n" \
"The performer is #{ticket.performer}.\n" \
"The seat is #{ticket.seat}, " \
"and it costs $#{'%.2f.' % ticket.price}"

print "What Info will you like to know? \n"
print 'Information desired: '
request = gets.chomp
# The second line of code gets a line of keyboard input,
# Chomps off the trailing new-line character, and saves
# the resulting string in the variable request .

if request == 'venue'
  puts ticket.venue
elsif request == 'performer'
  puts ticket.performer
end

# Theres an alternative: you can send the word directly to the ticket object.
# Instead of the previous code, youd do the following:
if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts 'No such information available'
end

# The difference between plain send and public_send is that
# send can call an objects private methods, and public_send cant

# Creating a Class
class Ticket
  attr_reader :venue, :date
  # attr_writer :price
  attr_accessor :price
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  # def movie_venue
  #   @venue
  # end

  # def movie_date
  #   @date
  # end
end
# tickete = Ticket.new
# puts tickete.event

# Method for Most Expensive Ticket
def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new('Ozone Cinema', '2019-05-21')
cc = Ticket.new('IMAX', '2019-05-21')
th.price = 100.00
cc.price = 80.0
highest = Ticket.most_expensive(th,cc)
puts "we've created two tickets"
puts "The first is for a #{th.venue} movie on #{th.date}."
puts "The second is for a #{cc.venue} movie on #{cc.date}"
puts
puts "The ticket cost of #{th.venue} is $#{'%.2f' % th.price}."
puts "The ticket cost of #{cc.venue} is $#{'%.2f' % cc.price}."
puts "The highest-priced ticket is the one for #{highest.venue}"
