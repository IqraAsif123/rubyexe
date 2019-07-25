# write a program that takes in two text inputs,and checks if it is an 
# anagram of one another
# an  anagram is a word or phrase formed by rearranging the letters of a different word or 
# phrase, typically using all the original letters exactly once.
   p "enter a text"
text= gets.chomp.upcase
   p "enter another text"
msg = gets.chomp.upcase
txtt = text.split("")
   p txt=txtt.sort.join
mesg = msg.split("")
   p masg = mesg.sort.join
#if i do looping then it will give me output in characters
#and i have to compare two words not characters
if txt == masg
   puts "words are anagram"
else
   puts "words are not anagram"
end