puts 'An interactive calculation of Celsius to Fahrenheit Conversion'
puts '--------------------------------------------------------------'
print 'Hello User. Please enter a Celsius value: '
celsius = gets
fahrenheit = (celsius.to_i * 9 / 5) + 32
print 'The Fahrenheit equivalent of is '
print fahrenheit
puts '.'

# Or a more shorter way
# print "Hello User. Please enter a Celsius value: "
# print "The Fahrenheit equivalent of is ", gets.to_i * 9 / 5 + 32, ".\n"
