#ruby notes

def grab_food
  puts "grabbing some food"
  puts "and it's good"
end

grab_food

#line 1-4 is defining a method and line 6 is calling a method
#grab_food is the method
#when you define a method the only way you can see it is if you call it.
#method call has to be under the def
#() if you want your shit to be more dynamic
#the thing in the () is the argument
#method defines that I have to have one argument.
# we add on the arguments the same way they're defined
def grab_food(food)
  puts "grabbing some #{food}"
end

grab_food("sushi")
grab_food("grabbing some beer")
#adding arguments to the methods makes it more dynamic

#pass multiple arguments

def grab_food(food, drink)
  puts "grabbing some #{food}"
  puts "drinking some #{drink}"
end

grab_food("sushi","shake")
grab_food("pizza","beer")
grab_food("chicken wings", "more beer")
#@instance variable
#food, and drink are local variables
#local variables have the smallest scope avaiable
#food is defiened by hash
meals = [
  {food: 'pizza', drink: 'beer'},
  {food: 'sushi', drink: 'shake'},
  {food: 'pasta', drink: 'wine'}
  {food: 'burger', drink: 'coke'}
]

meals.eash do |meal|
  grab_food(meal[:food], meal[:drink])
end


@meals = []
dinner = {}

puts "please enter in a food"
food = gets.chomp
puts "please enter in a drink"
drink = gets.chomp

dinner[:food] = food
dinner[:drink] = drink
@meals << dinner
end

puts "Enter in a dinner? [Y] or [N]"
answer = gets.chomp
while answer.upcase == 'Y'
  add_meal
  puts "Enter in a food? [Y] or [N]"
  answer = gets.chomp
end


@meals.each do |meal|
  grab_food(meal[:food], meal[:drink])
end


#new concept =
#object oriented programming
#programming is basically communicating to a computer using a certain language
#OOP - dealing with objects. have to think from a real world perspective, and
#be as detailed as possible - objects in ruby - everthing in ruby returns a
# value, therefore, it's an object. .length returns a fixum. method chains coz
#everything is an object. when we create our own object, we have to create blueprints.
# we have to create a class.
#naming conventions differs. can't begin with numbers, and have to begin with
#a capital letter.
#no spaces or underscores if putting two words together.
#capital letter and its called a constant.
#contant is the opposite of a variable
#variable means it can change.
#contant is something that cant change.
#class is a constant.
#PI = 3.14
#a class is sort of like a noun. something we are considering an object.
#create methods inside of the class.
#
class Animal
  def run

  end

  def eat

  end

  def sleep

  end

  def make_noise

  end

  def play

  end

  def climb

  end
end
#inheritence human inherits from animals. inheriting traits from a parent object.
#
class Human < Animal
  def play_computer_games

  end
end


class Parent
end

class Child < Parent
end

class Boat
end

class SailBoat < Boat
end

class Country
end

class City < Country
end

class Player
end

class Dealer < Player
end
#attributes or attr methods. attr writer_ attr_reader attr_accessor
# we use one of the three
#short hand for creating methods for us.
#attr_writer = lets us assign
#attr_reader  = lets us return value
#attr_accessor = add a write and reader together.
class Chair
  attr_write :color, :size, :arms, :design, :material, :weight, :name, :maker,
  :brand, :confort_level, :is_broken

  attr_reader ::color, :size, :arms, :design, :material, :weight, :name, :maker,
  :brand, :confort_level, :is_broken

  attr_accessor : :color, :size, :arms, :design, :material, :weight, :name, :maker,
  :brand, :confort_level, :is_broken
  end
end
# when we want to
class Chair
  #when you have a reader that is an attribute to an object, the reader method will return
  #the value as the same name.
  #:color, :size, :arms, :design, :material, :weight, :name, :maker,
  #:brand, :confort_level, :is_broken
  # Reader Method returns a value
  def color

  end
  #Writer Method = sets a new value
  def color=(new_color)
    @color = new_color
  end

  def size

  end

  def size=(new_size)

  end

  def weight

  end

  def weight=(new_weight)

  end
end

#OOP - modeling things after real world objects
#
class Sandwhich


end
#instances of objects.
# Instance methods
# class methods
#instance method
class String
  def reverse

  end

  def length

  end

  def
#
class Animal
  def eat
    puts "eating food"
  end
#this method gets called every time we call .new on a class
  def initialize


  def run
    puts "running around"
  end
end

#when creating a new instance for an object, we use a term called instantiation
#we assign
class Human
  attr_accessor :hair_color, :eye_color, :number_of_fingers, :number_of_toes,
  :heart_rate, :skin_color, :sex, :name

   def initialize
     @hair_color = "black"
     @eye_color = "green"
     @number_of_fingers = 10
     @number_of_toes = 10
     @heart_rate = "72bpm"
     @skin_color = "pale and gooey"
     @sex = "female"
  end
#reader method
  def skin_color
    @skin_color
  end
#writer method
  def skin_color=(new_skin_color)
    @skin_color = new_skin_color
  end

end

#find an object and create a class.

class Poster
  attr_accessor :size, :color, :wording, :texture, :typography

  def initialize
    @size = "24 X 36"
    @color = "black"
    @wording = "green"
    @texture = "smooth"
    @typography = "matrix"
  end
end

#class, and instance method

class Human

  def age
  end

  def age=(some_new_age)
  end
#this method here is asking a question. that method will return true or false.
#
  def old_enough?
  end
end

Class TicTacToe

  def is_x_move?

  end

  def is_o_move?

  end

  def x_wins?

  end

  def o_wins?

  end
end
#instance method
class Human
#! means method is going to be destructive.
  def die!

  end
end

#wow.downcase! the original object no longer has capital letters.

class Human

  def die!

  end

  def name_(new_name)

  end

  def old_enough_to_vote?

  end

  def age

  end
end

#class method
#
class Human
#class method.are called on the class itself.

  def self.evolve
   puts "monkey to super being"
  end
end
#this is a class method
class Human

  def self.create_boy
    baby = new
    baby.sex = "male"
    baby
  end

  def self.create_girl
    baby = new
    baby.sex = "female"
    baby
  end

  def boy?
    sex == "male"
  end

  def girl?
    sex == "female"
  end
end
#things you can put inside methods
#anyting inside on methods
#when it comes to methods, we call method on string, everything returns a value.
#the return value from a method is going to be the last evulated thing from that method.

#make a car object api
#the car can drive
#the direction it drives should be dynamic
#the car has a year, make, and model attributes

#instantiate the object, and make the car drive. when driving, it should just print which direction its driving.
#assign all the attributes a value
class Car
#the car has a year, make, and model attributes
  attr_accessor :year, :make, :model

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end
#the car can drive
  def drive(direction)
#the direction it drives should be dynamic
    puts "the car is driving #{direction}"
#when driving, it should just print out which direction it's driving
  end
end
#instantiate the object.
kia = Car.new
#and make the car drive
kia.drive("up")
#asssign all the attributes a value for your car.
kia.make = "kia"
kia.model = "optima"
kia.year = 2006
#what is it called when () is added? arguements. call a method, passing arugements
#
my_car = Car.new("kia", "optima", 2006)
puts "the car I drive is a #{kia.year} #{kia.make} #{kia.model}"

your_car = Car.new("vw, "gti", 2002)
puts "the car I drive is a #{your_car.make} #{your_car.model} #{your_car.name} #{your_car.year}"
