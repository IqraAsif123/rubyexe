# print number from 1-100
# for multiples of three print "fizz" instead of number
# for multiples of 5 ptint "Buzz"
# number that are multiples of both five and three print"FizzBuzz"   
puts "enter any number from 1-100"
num = gets.chomp.to_i
i=1
while i < num 
    i= i+1
    if i == num
       # puts i
 #for num in (1..100) do
    if i %3 == 0 && num %5 == 0
        puts "FizzBuzz"
    
    elsif i %3 == 0
        puts "Fizz"
    elsif i %5 == 0
        puts "Buzz"
    else
        puts i
    end

end
end
#how to assign num that only works untill 100

