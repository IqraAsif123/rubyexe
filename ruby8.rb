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












# # grades =Hash.new do |grade,keys| 
# #     grades[keys]=[] 
# #     p grades[keys]
# # end
# # p grades.keys
