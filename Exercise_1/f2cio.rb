puts 'An interactive calculation of Fahrenheit to Celsius Conversion while reading from a file'
puts '----------------------------------------------------------------------------------------'
puts 'Reading Fahrenheit tempersture value from data file'
num = File.read('temp_fah.txt')
fahrenheit = num.to_i
celsius = 'The Celsius equivalent is ', (fahrenheit - 32) * 5 / 9
# fahrenheit = (celsius.to_i * 9 / 5) + 32
puts 'The number is ' + num
puts celsius
puts "Saving output to a file 'temp_out.txt'......."
fh = File.new('temp_out.txt', 'w')
fh.puts celsius
fh.close