# use modulo operator divison or combination of both 
# take 4 digit number and find
# 1000 place
# 100 place
# 10 place
# 1 place
p "enter a 4 digit number"
number= gets.chomp.to_i
p thousand=(number/ 1000)
p thousands=number%1000

p hundered=(thousands/100)
p hundereds=number%100

p ten=(hundereds/10)
p tens=number%10

p one=(tens/1)
p ones=number%1