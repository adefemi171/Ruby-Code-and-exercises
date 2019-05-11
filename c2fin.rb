puts 'An interactive calculation of Celsius to Fahrenheit Conversion while
reading from a file'
puts '--------------------------------------------------------------------------
--------------'
puts 'Reading Celsius tempersture value from data file'
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts 'The number is ' + num
print 'Result: '
puts fahrenheit
