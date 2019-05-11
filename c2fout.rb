puts 'An interactive calculation of Celsius to Fahrenheit Conversion and writing
 result to a file'
puts '--------------------------------------------------------------'
print 'Hello User. Please enter a Celsius value: '
celsius = gets
fahrenheit = 'The Fahrenheit equivalent is ', (celsius.to_i * 9 / 5) + 32
puts "Saving output to a file 'temp.txt'......."
fh = File.new('temp.txt', 'w')
fh.puts fahrenheit
fh.close
