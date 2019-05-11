puts 'An interactive calculation of Celsius to Fahrenheit Conversion while reading from a file'
puts '----------------------------------------------------------------------------------------'
puts 'Reading Celsius tempersture value from data file'
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = 'The Fahrenheit equivalent is ', (celsius * 9 / 5) + 32
# fahrenheit = (celsius.to_i * 9 / 5) + 32
puts 'The number is ' + num
puts fahrenheit
puts "Saving output to a file 'temp1.txt'......."
fh = File.new('temp1.txt', 'w')
fh.puts fahrenheit
fh.close
