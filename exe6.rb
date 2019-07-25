#get input
#generate triangel
#add second triangel flipped 180
puts "enter number"
num=gets.chomp.to_i
i = 1
STAR = "*"
while i <= num #suppose num is 4 i will loop until 4
    puts STAR * i
    i = i +1
end
i = num
while i <= num
puts STAR * i
i = i -1
end
# the issue is i have negative argument 
#when i multiply string with integer
# when integer substract one number it will get -sign
#so mulitiplication will get -sign