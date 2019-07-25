# array=[
#     {name: "Mars", age: 17},
#     {name: "Hector", age: 21},
#     {name: "Hera", age: 15},
#     {name: "Artemis", age: 16}
# ]
# array.each do |hash|
#     hash.each do |key,val|
#         # p key
#         p val
#     # puts hash
#     # hash.each_with_index do |k,v,i|
#         # p k
#         # p k

#         #  if hash[keys[1]] >= 18
#         #      return true
#         #  else
#         #      return false
#         # end
#     # end
#     end
# end

# def filter_lengths(array,integer)
#      array1=[]
#     array.each do |string|
#         #p string.length
#          if string.length >= integer
#             p string
#              array1 << string
#          end
#          #return array1
#      end
#     return array
# end
# filter_lengths(["pear", "dragonfruit", "fig", "pineapple"], 4)
#def replace_char_at!(string, char, index)
    # Write Your method code here
#     def any(arr,steps)
#     for i in 0..steps
#     first = arr[0]
#     #p first =>[123]
#     for j in 1..arr.size
#       arr[j-1]=arr[j]
#     end
#      arr[-1]=first

#     end
#     return arr
#   end
#  p any([1,2,3,4],2)




 def any(array,steps)
  i=steps
  for i in steps..1
    array.push(array.shift)
  end
   return array
end
 
 p any(["grapes", "mango", "durian", "mangosteen"],-3)
#  #=>[mango,durian,mangosteen,grapes]


# array=[4,2,0,2]
# hash={2=>"two",0=>"zero",5=>"five"}
# array.each_with_index do |word, index|
#   hash.each do |k,v|
#     if word == k
#       array[index] = hash[k]
#     end
#   end
# end
# p array

#output [4, "two", "zero", "two"]