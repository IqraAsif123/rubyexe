# Exercise 40
# You will write a method, find_peaks(array), that accepts an array of integers
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbour.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbour

# Write Your method code here
# [1, 3, 5, 4], [5])
# [4, 2, 3, 6, 10], [4, 10])
# [4, 2, 11, 6, 10], [4, 11, 10])
    def find_peaks(array)
        arr=[]
        #getting fst ele if its greater than its right neighbour
        #for all arrays
        if array[0] > array[1]
            arr << array[0]
        end

#so we have ele of index 0 now start loop from 1 until the length of array
#now compare ele with its left and right both 
#push ele to new  array if its greater then its right nad left
#incriment the loop until it reaches the end
        i = 1
        while i < array.length - 1
            if array[i] > array[i+1] && array[i] > array[i-1]
                arr << array[i]
            end 
            i += 1
        end

        #getting last ele if its greater than the ele on its left 
        #for all array
        if array[-1] > array[-2]
            arr << array[-1]
        end
        
        return arr

    end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = find_peaks(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [1, 3, 5, 4], [5])
    check_solution(2, [4, 2, 3, 6, 10], [4, 10])
    check_solution(3, [4, 2, 11, 6, 10], [4, 11, 10])
end

# Execute the tests.
run_tests()