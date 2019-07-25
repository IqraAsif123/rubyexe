# give an array of 0's and 9's in random order 
# ,segregate the 0's to the left side of the array and the 9's to the right side
# [0,9,0,9,0,9,0,9]
# [0,0,0,0,9,9,9,9]

#this method is only for array that contain 0 and 9 
#if an array contain num greater than 9 then 9 wont be at the left side of the array
# array=[0,9,0,9,0,9,0,]
# p array.sort




#one more method
array = [0,4,8,9,6,9,6,7,0,0,0,0,0,4,7,5,4,9,9,0,0,1,3]
first=[]
last=[]
middel=[]

array.each do |ele|
    if  ele == 0
       first.unshift(ele)
    elsif
        ele == 9
        last.unshift(ele)
     else
         ele != 9 || ele != 0
        middel.unshift(ele)
    end
end
nested =  first + middel + last
p first
p last
p middel
p nested