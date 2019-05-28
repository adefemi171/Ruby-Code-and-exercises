# frozen_string_literal: true

require_relative 'stacklike'

# Stack Class calling Stacklike Module
class Stack
  include Stacklike
end

s = Stack.new
s.add_to_stack('Femi')
s.add_to_stack('Mike')
s.add_to_stack('Ade')
puts 'Objects Currently in Stack: '
puts s.stack
taken  = s.take_from_stack
puts 'Removed this object: '
puts taken
puts 'Now on stack: '
puts s.stack