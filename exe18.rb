# implement a method shuffle that will take in array as parameter 
# and shuffle the elements randomly 
# dont  use .shuffle method


#one method
# array=[1,2,3,4,5,6]
# def method(arr)
#     arr.shuffle
# end
# p method(array)




#2nd method
# In contrast to .sort, .sort_by must be used with a block, 
# and the block only takes one argument. When using .sort_by,
# you typically want to manipulate the argument in some way in order to make it sortable.
# .sort_by works by creating what you can think of as an invisible hash.
# When called on an array, it calculates a set of numerical keys (known as “sort keys”),
# and assigns each element in the array to one of those sort keys.
# Then, the keys are sorted, and mapped back onto the original values.
# The return value is the sorted array.

# array=[1,2,3,4,5]
# def method (array)
#      array.sort_by{rand}
# end
# p method(array)


#3rd method
array= [1,2,3,4,6]

def method(array)
    array_length=6
array.sample(array_length)
end
p method(array)