#getting higher number
p "input a number"
number=gets.chomp.to_i
 highest=number*100
p "your highest number is #{highest}"


#getting smaller number 
p "input any number"
number = gets.chomp.to_i
smaller=number/100
p "your smallest number is #{smaller}"

#getting remainder
#To play with .to_f more, make a small script that asks for some money
# gives back 10% of it.
#If I give your script 103.4 (dollars), your script gives me back 10.34 in change
#money="i am giving you 103.4"
money= 103.4 
p "input any number"
number = gets.chomp.to_i
remainder=money/number
p "the remainder is #{remainder}"



 