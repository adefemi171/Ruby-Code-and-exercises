class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friends
  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

  def Person.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")
      attr = method[9..-1]
      if Person.public_method_defined?(attr)
        PEOPLE.find_all do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end
end

h  = Person.new("Hawa K.")
o  = Person.new("Oye V.")
h.has_friend(o)
h.has_hobby("Eating")
o.has_hobby("Sleeping")
# Person.all_with_hobbies(h).each do |person|
#   puts "#{person.name} likes #{person.all_with_hobbies} "
# end
Person.all_with_friends(h).each do |person|
  puts "#{person.name} is friends with #{h.name}"
end

Person.all_with_hobbies("Sleeping").each do |person|
  puts "#{person.name} is into Sleeping"
end

Person.all_with_hobbies("Eating").each do |person|
  puts "#{person.name} is into Eating"
end
# puts "#{h.name} is into Running"
# puts "#{h.has_friend(o)}"
