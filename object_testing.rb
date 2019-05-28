obj = Object.new

puts "The id of the object is #{obj.object_id} ." 
str = 'Strings are object too and this is a String'
puts "The id of the string object is #{str.object_id} ."
puts "and the id of an integer 100 is #{100.object_id} ."


a = Object.new
b = a
puts "a's id is #{a.object_id} and b's id is #{b.object_id}."

# Same String but different object_id
string_1 = "Hello"
string_2 = "Hello"
puts "string_1's id is #{string_1.object_id}."
puts "string_2's id is #{string_2.object_id}."

str_1 = "Hello"
str_2 = str_1
puts "string_1's id is #{str_1.object_id}."
puts "string_2's id is #{str_2.object_id}."



# respond_to? is an example of introspection or reflection, two terms that refer 
# to examining the state of a program while it’s running.

if obj.respond_to?("talk")
    obj.talk
else
    puts "Sorry, the object doesn't understand the 'talk' message."
 end

