class Person
  attr_accessor :first_name, :last_name, :school

  def initialize(fn,ln, s)
    @first_name = fn
    @last_name = ln
    @school = s

  end

  def greet
    raise "need to define greet in subclass"
  end

  # def greet 
  #   case @role
  #   when 'student'
  #     puts "Hello I am #{first_name} and I am a student"
  #   when 'teacher'
  #     puts "Hello I am #{first_name} and I am a teacher"
  #   when 'ta'
  #     puts "Hello I am #{first_name} and I am a ta"
  #   else 
  #     raise "invalid role"
  #   end
  # end
end

# student = Person.new('Jane', 'Doe', 'student', 'Mountain Valley Jr. High')
# ta = Person.new('Jake', 'Johnson', 'ta', 'Mountain Valley Jr. High')
# teacher = Person.new('Spencer', 'Richards', 'teacher', 'DevPoint Labs')

# student.greet
# ta.greet
# teacher.greet

class Teacher < Person
  attr_accessor :slary

  def initialize(first_name, last_name, school, salary)
    super(first_name, last_name, school)
    @salary = salary
  end

  def greet
  puts " I am a teacher. my name is #{first_name} and I work at #{school}"
  end

  def teach
    "1+1 = 2"
  end

end


teacher = Teacher.new("fred", "Flinstone", "school of rocks", 10000000)
teacher.greet

class Student < Person
  attr_accessor :grades, :password, :uniforms

  def initialize(first_name, last_name, school, grades, password, uniforms)
    super(first_name, last_name, school)
    @grades = grades
    @password = password
    @uniforms = uniforms
  end

  def check_password 
    if @password == 123456
      puts "bad password"
    else
      puts "good password"
    end
  end

  def get_grades
    @grades.each do |x|
      puts "course: #{x[:course]} grade: #{x[:grade]}"
    end
  end

end

fake_grades = [{course: 'math', grade: "A"}, {course: 'english', grade: "B"}]

uniforms = ['Blue Shirt', 'Black Shirt']

student1 = Student.new("Barney", "Flinstone", "UCLA", fake_grades, "124459384", uniforms)

student1.check_password

student1.get_grades


