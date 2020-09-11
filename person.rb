class Person
  attr_accessor :name, :age

  #initialize method
  def initialize(name, age)
    #we make them instance variables so they can be called outside of "person"class 
    @name = name
    @age = age
  end

  def increase_age(number)
    @age += number
  end

  #this a instance method because it is a method on the instance of the class
  def say_hello
    return "hello I am #{@name}"
  end

  def say_secret_length
get_secret.length

  end
  
  #private methods are only visible within the class
  private

  def get_secret
"password"
  end

end


#new calls initialize
bob = Person.new('Bob', 21)
sally = Person.new('sally',47)
puts bob.name
puts bob.age
bob.increase_age(1)
puts bob.age
puts bob.say_hello
#bob is a varoable but it it is an instance of the Person class

# puts bob.get_secret ---- you cannot say this the program will not let you
puts bob.say_secret_length

class Dog
  #attr_accessor makes name and breed accessible to rest of the code
 attr_accessor :name
 # reader makes it so you can read the value but not change it later
 attr_reader :breed, :owner
 

 def initialize (name, breed, person)
  @name = name
  @breed = breed
  @owner = person

 end

 #this would be a class method- meaning it is activated when the class is called
 def self.bark
"woof"
 end
end

lars = Dog.new("lars","lab", bob)

puts lars.name
puts lars.breed
puts lars.owner.name
puts Dog.bark