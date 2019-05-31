class Student
    def method_missing(m, *args)
      if m.to_s.start_with?('Grade for ')
        puts "You got an A in #{(m.to_s.split(" ").last.capitalize)}!"
      else
        super
      end
    end
end

grad = Student.new
grad.method_missing('Grade for english')
