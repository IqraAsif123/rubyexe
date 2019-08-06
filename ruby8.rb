# class Cat
# @@tail="long"

# def initialize(name,age)
#     @tail=@@tail#class variable my object will have access to it 
#     @name = name
#     @age = age
# end


# #class method
# def self.tail
#     @@tail
# end

# #getter method
# def name #the attribute from initilize
#     @name 
# end
# def age
#     @age
# end
# def tail
#     @tail
# end
# #instance method
# def meow
#     if @age > 5
#         puts @name.upcase + "....ROARS"
#     else
#         puts "....meow"
#     end
# end


# #setter method
# #age is the instance variable
# #for setter initialize atrribute=(arg)
# #       instance variable = argument
# def name=(name)
#     @name = name
# end
# def age=(num)
#     @age = num
# end
# def tail=(property)
#     @tail = property
# end


# #..................if we want to bring change in multiple methods
# # def mulitple(name,age)
# #     name= name
# #     age= age
# # end
# #this wil not work because ruby think we are changing instance variables
# #...............................................................


# #...................lets try it again
# def mulitple(name,age)
#     self.name = name
#     self.age = age
# end
# #................................................................

# #work on single instance
# #cat1 contain @name = name = lena
# #cat1 contain @age = age = 3
# #cat2 contain @name = name =  hena
# #cat1 contain @age = age = 2

# end
#  Cat.tail
# cat_1 = Cat.new("lena", 9) #create object
# cat_2 = Cat.new("hena",2)
# cat_1.tail="sort"
# #p cat_2.name
# cat_1.mulitple("gigi",23)
# p cat_1
# cat_2.mulitple("lulu",28)
# p cat_2
# puts cat_1.meow
# puts cat_2.meow

# #if we want to get the name of cat_1 and cat_2
# #need to have method for @name same for age


# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :height, :age
  MAX_AGE = 13
  FRUIT_BEARING_AGE = 4

  # Ages the tree one year
  def initialize
    @age = 0
    @height = 0
    @oranges = []
  end

  def age!
    @age += 1
    @height += rand(0.3..0.5)
    rand(100..300).times {@oranges << Orange.new(rand(0.1..0.3))} if @age > FRUIT_BEARING_AGE
  end

  def dead?
    @age >= MAX_AGE
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges.length > 0
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?

    # orange-picking logic goes here
    @oranges.pop
  end
end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end


tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []
  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  # It's up to you to calculate the average diameter for this harvest.
  sum = 0
  basket.each {|orange| sum += orange.diameter}
  avg_diameter = sum/basket.length

  # another way of achieving the average diameter:
  # avg_diameter = basket.inject(0) {|sum, orange| sum + orange.diameter}/basket.length

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"













# # grades =Hash.new do |grade,keys| 
# #     grades[keys]=[] 
# #     p grades[keys]
# # end
# # p grades.keys
