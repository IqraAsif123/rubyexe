# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          array=[]

         p family[:uncles]+family[:sisters]+family[:brothers]+family[:aunts].flatten
         #p array
   p family.keys #get the keys name only
   p family.values #get the values only


#    Look at Ruby's merge method. Notice that it has two versions.
#     What is the difference between merge and merge!?
#      Write a program that uses both and illustrate the differences.

# #merge two hashes
# hash_one={key_one:"value_one"}
# hash_two={key_two:"value_two"}
# merging=hash_one.merge(hash_two)
# p merging
# p hash_one
# p hash_two
# #use merge! it will change hash_one permanently
# hash_one.merge!(hash_two)
# p hash_one
# p hash_two


# Using some of Ruby's built-in Hash methods, 
# write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. 
# Finally, write a program that prints both.




hash= {"key_one"=>"value_one", key_two:"value_two"}
#
hash.keys.each do |k|
    #or hash.keys
p k
end
hash.each_value do |v|
    #or hash.values
    p v
end
#is same for both |k,v|
#p k
#p v




#Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]



#What method could you use to find out if a Hash contains a specific value in it?
# Write a program to demonstrate this use.
hash = { 'key_one'=> 'value_one' ,'key_two'=>'value_two'}
p hash.has_key?('key_one')
#and
p hash.has_value?('value_one')



#Write a program that prints out groups of words that are anagrams. 
#Anagrams are words that have the same exact letters in them but in a different order.
# Your output should look something like this:
#words are anagram
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
    'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
    'flow', 'neon']
     hash = {}
    words.each do |word|
       # p word
      splitted= word.split('').sort.join
     # hash[splitted]=splitted
       if hash.has_key?(splitted)
        hash[splitted].push(word)
       else
         hash[splitted] = [splitted]
       end
    end
    hash.each do |k ,v|
        p v

    end