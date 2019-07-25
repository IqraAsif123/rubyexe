# write a program that takes in an input number,
# convert the input into  roman numerals
# e.g 2678=>MMDCLXXVIII
puts "enter any number"
num=gets.chomp.to_i

values= [ ["M",1000],
["CM",900],
["D",500],
["CD",400],
["C",100],
["XC",90],
["L",50],
["XL",40],
["X",10],
["IX",9],
["V",5],
["IV",4],
["I",1]]
roman =" "
#solution will  be updated soon