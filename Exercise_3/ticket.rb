# frozen_string_literal: true

# Ticket Exercise class
class Ticket
  def initialize(venue)
    @venue = venue
  end

  def movie_venue
    @venue
  end

  def st_date=(date)
    @date = date
    # if @date < 100
    #   @date += 2000
    # end
  end

  def movie_date
    @date
  end

  def st_price=(amount)
    @price = amount
  end

  def price
    @price
  end

  def st_discount=(percent)
    @discount = @price * (100 - percent) / 100.0
  end

  def discount
    @discount
  end
end
# tickete = Ticket.new
# puts tickete.event
th = Ticket.new('Ozone Cinema')
cc = Ticket.new('IMAX')
th.st_date = "2019-05-24"
cc.st_date = '2019-05-24'
th.st_price = 100.00
cc.st_price = 100.00
th.st_discount = 15
cc.st_discount = 16
puts "we've created two tickets"
puts "The first is for a #{th.movie_venue} movie on #{th.movie_date} with."
puts "The second is for a #{cc.movie_venue} movie on #{cc.movie_date}\n"
puts
puts "The ticket cost of #{th.movie_venue} is $#{'%.2f' % th.price}."
puts "The ticket cost of #{cc.movie_venue} is $#{'%.2f' % cc.price}."
puts
puts "The ticket for #{th.movie_venue} has been discounted 15% to  $#{'%.2f' % th.discount}\n"
puts "The ticket for #{cc.movie_venue} has been discounted 15% to  $#{'%.2f' % cc.discount}"