# Exercise 39
# You will write a method, bubble_sort(array), that accepts an array
# The method should use the bubble sort algorithm to return an array with its elements arranged in increasing order
# You may not use the Array#sort method in your solution

# Write Your method code here
def bubble_sort(array)

    if array.size==1 || array.size==0
      return array
    end
    
    sorted = false
    while !sorted
      sorted = true

      array.each_with_index do |x,i|
      
        if i < array.length - 1
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i] #swapping
                sorted = false
            end
        end
    end
    end
    return array
end
# def bubble_sort(array)
#     # if array.size==1 || array.size==0
#     #     return array
#      swapped = true
#      lenght = array.length-1
#     while swapped do
#         i = 0
#         swapped = false
#         while i < lenght
#             if array[i] > array[i +1]
#                 array[i], array[i+1] = array[i+1], array[i]
#                 swapped = true
#             end
#            i = i + 1
#         end
#     end
#     return array
# end
# #end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = bubble_sort(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [2, 8, 5, 2, 6], [2, 2, 5, 6, 8])
    check_solution(2, [10, 8, 7, 1, 2, 3], [1, 2, 3, 7, 8, 10])
    check_solution(3, [1, -2, 5, 3, -4 ], [-4, -2, 1, 3, 5 ])
end

# Execute the tests.
run_tests()