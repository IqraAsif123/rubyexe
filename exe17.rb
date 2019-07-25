# write a programm to ask inputs
# as long as numbers are inputted it would continue asking for more
# numberswhen "done" is inputted instead of number print the following
# 1  show the lowest and hightest number
# 2  show the sum of all numbers inputted
# 3  show how many numbers are inputted
# 4  show the average of the numbers
# 5  show a list of all the even numbers only
# 6  show a list all numbers inputted

# bonus if there are any prime numbers show a list of prime numbers
# attempt tp write this method of checking a prime number yourself
arr=[]
while arr != "done" do 
    p "whats your input"
    ans= gets.chomp    
      if ans == "done"
         break
     end
     arr << ans.to_i
end
 p arr   #now i have the final array with all the inputs 
     sum = arr.sum
 p "your sum of elements is #{sum}"
     sorted= arr.sort
 p "your sorted array is #{sorted}"
 p "your highest number is #{sorted [-1]}"
 p "your lowest number is #{sorted [0]}"
     total= arr.length
 p "your total elements are #{total}"
     average = sum/total
 p "your average of elements is #{average}"
 #find the even number
 #p   arr.select {|ele| ele.even?}
 #second way
 new_array=[]
 arr.each do |ele|
   if ele % 2 != 0 
      arr.delete(ele)
   end
end
p arr

#later work on prime number
      

   