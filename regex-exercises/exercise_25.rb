# Exercise 25
# Given an input string with alphanumeric characters, extract the integers into a list and print them out in the order of occurrence.
# If there is a dash (-) immediately before a number, it will be deemed as a negative number and it is a different number from the positive
# Bonus: Include the number of times the integer occured in total in the entire string for each integer

# e.g. Your output should be:
# The numbers are: -23, 1, 578, -12, 7, 23, ...

# If you attempt the bonus, uour output should be:
# The numbers found are:
# -23: 3 times
# 1: 3 times
# 578: 2 times
# -12: 3 times
# 7: 4 times
# 23: 1 time
# … etc

def extract_integer(input_string)
 regex=input_string.scan(/\d+|-\d+/)
 p regex
 #or
 #array.each_with_object(Hash.new(0)) { |number,v| hash[number] += 1 }
 count=Hash.new (0)
 regex.each do |number| 
     count[number] +=1
 end
#p count
count.each do |number,v|
p "#{number}: #{count[number]} times"
end
end
input = "dS-23a1lt578jmnw-1n-23bsi-12p7nbh7asd23mbj578frew1a7oo903o7mk12arr909oposdf435rr"

extract_integer(input)








# output= "#{number}: #{count[number] +=1} times"
 
 #hash=Hash[regex.collect {|numbers,value| p [numbers,0]}]
 #p hash
  #{"-23"=>0, "1"=>0, "578"=>0, "-1"=>0, "-12"=>0, "7"=>0, "23"=>0, "903"=>0, "12"=>0, "909"=>0, "435"=>0}
  
 #hash.count do |numbers,v|
 #from here i wanna count the values's occurences 