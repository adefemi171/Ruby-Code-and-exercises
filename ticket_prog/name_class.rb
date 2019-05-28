
# frozen_string_literal: true

# Creating a class person
class Person
  def set_name(string)
    print 'Enter your name here: '
    puts "Setting person's name......"
    string = gets
    @name = string
    #puts @name
  end
  def get_name
    puts "returning the person's name....."
    @name
  end
end
femi = Person.new
femi.set_name('Femi')
puts femi.get_name
