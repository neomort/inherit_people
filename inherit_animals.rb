# require_relative "person"
#this calls to another file in the same folder


class Mammal
  attr_accessor :name, :age

  def initialize(name, age)
    puts "Mammal init called"
    @name = name
    @age = age
  end

  def breathe
    "do breathing here"
  end


  def speak
  raise "you must override this method in the sub class"
  end
end

# class App
#   attr_accessor :person

#   def initialize
#     # @person = init_person
# @person = init_person
#   end

#   def init_person
#     puts "called"
#   end
# end

class Cat < Mammal
  def initialize(name, age)
    puts "Cat init called"
    super(name, age)
  end

  def speak
    puts "meow"
  end
end

fuzzy = Cat.new("FUZZY", 28)

# fuzzy.speak

