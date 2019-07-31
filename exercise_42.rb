# Exercise 42
# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".

# Write Your method code here
def display_count(count)
    if count == 1
      #""
    else
      count.to_s
    end
  end
def compress_string(string)
    new_string = "" 
    last_char = nil
    count = 0
  
    string.chars.each do |char|
      if char == last_char
        count += 1
      else
        new_string << "#{display_count(count)}#{last_char}" if last_char
        last_char = char
        count = 1
      end
    end
  
    new_string << "#{display_count(count)}#{last_char}" if last_char
  
    new_string
end
# def compress_string(string)
#     new_string = []
#     #  converting string to an array get unique
#    split = string.split("")
#    split.each do |char|
#       count = 1
#     #   converting the original string to array
#       string.chars.each do  |word|
#         # compairing two array
#             if char == word
#             count += 1
#             end
#         end
#         # pushing the uniqe element with the frequency of repeating of itself to new empty array
#         new_string << "#{count}#{char}"
#     end
#     return new_string.join("")
#  end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, expected)
    actual = compress_string(string)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1,"aaabbc", "3a2bc")
    check_solution(2, "xxyyyyzz", "2x4y2z")
    check_solution(3, "qqqqq", "5q")
    check_solution(4, "mississippi", "mi2si2si2pi")
end

# Execute the tests.
run_tests()