# write a programm that takes in a sentence from user
# returns
# list of unique characters in sentence
# frequency that each type of character appears in string
# an uppercase and lowercase character count as the same as uniquc character
# BONUS display the list of unique character in decending order
 
puts "enter a sentence"
text= gets.chomp.downcase
text_one= text.split("").uniq
p text_one
 #but the problem i cant sort out the problem of space between words 
 #if the input contain space the output will have the space as unique character
 
 
 #it could be Hash.new
 #and Hash.new(0)
 #0 is the default value means and empty hash with 0 index
 freqs = {}
 freqs.default = 0
 #or default method can be used
 text_two=text.delete(" ")
 text_two.each_char do |char|
     freqs[char] += 1

 end
 p freqs
     text_two.split("").each do |x| 
     puts "#{x} : #{freqs[x]}" 
     end

     #decending the uniq characters
     p  text_one.reverse