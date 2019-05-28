# frozen_string_literal: true

# Module for performing Stacklikeness
module Stacklike
  def stack
    # ||= means or-equals operator is to set the var to specified value
    @stack ||= []
  end

  def add_to_stack(obj)
    stack.push(obj)
  end

  def take_from_stack
    stack.pop
  end
end
