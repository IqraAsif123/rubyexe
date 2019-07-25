#write a method to reverse the order of element in an array
#write a second method that does exactly the same but you are not allowed to use temporary array.
# arr=[1,2,3,4,5]
# def reverse(arr)
# new_array=[]
# for x in (1..arr.length) #this line will loop inside the array taking fst element until the last 
#     new_array<<arr.pop #it pops last ele to new array and goes back to loop untill all the elements get pop into newarray

# end
# p new_array
# end
# reverse(arr)





#an extra way to do but its not working with the length of arr
#not the ele of array 
# arr=[0,1,2,3,4,5]
# def reverse(arr)
#     i=(arr.length+1)-1
#  arr.map do |ele| 
#  i= i - 1
# end
# end

#  p reverse(arr)




arr=[0,1,2,3,4,5]
def reverse(arr)
 arr.each_index.map {|ele| arr[-ele -1]}
end

 p reverse(arr)