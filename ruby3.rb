# x= 1
# CONSTANT = "a"
# while x < 10
#     puts CONSTANT * x
#     x = x + 1
# end




# 6. Write a Ruby program which accept the user's 
# first and last name and print them in reverse order with a space between them.
#  puts "please enter  yor first name "
#  name = gets.chomp #name is string
#  puts "enter your last name "
#  namel=gets.chomp
#  puts "hello" " " "#{name.reverse}" " " "#{namel.reverse}"



#Append 11 to the end of the original array. Prepend 0 to the beginning.
# array=[]
# array.unshift(0,11)
# p array

#Append
# arr=[]
# p arr.push(11)
# # --- or ---
# arr << 11

# # Prepend
# p arr.unshift(0)
# #Get rid of 11. And append a 3.
# arr.pop(11)
# arr.push(3)
# p arr


#Create a Hash using both Ruby syntax styles.

# hash={'key'=>'value'}
# hash={:key=>'value'}
# hash={key: 'bob'}

# h = {a:1, b:2, c:3, d:4}

# Get the value of key `:b`.

# Add to this hash the key:value pair `{e:5}`

# Remove all key:value pairs whose value is less than 3.5
# p h[:b]
# h[:e]=3
# h.store("d", 42) 
# p h
#     h.delete(:a)
#     h.delete(:b)
#     h.delete(:c)
#     h.delete(:e)
# p h
# h.delete_if do |k, v|
#     v < 3.5
#   end
#   p h



  #Given the following data structures. 
  #Write a program that moves the information from the array into the 
  #empty hash that applies to the correct person.

#   contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
#         ]

#   contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


#     contacts['Joe Smith'][:email]=contact_data[0][0]
#     contacts['Joe Smith'][:adress]=contact_data[0][1]
#     contacts['Joe Smith'][:number]=contact_data[0][2]
#     contacts['Sally Johnson'][:email]=contact_data[1][0]
#     contacts['Sally Johnson'][:adress]=contact_data[1][1]
#     contacts['Sally Johnson'][:number]=contact_data[1][2]
#     p contacts

   #Using the hash you created from the previous exercise,
   # demonstrate how you would access Joe's email and Sally's phone number?
    
#    puts "joe Smith's email is "  "#{contacts["Joe Smith"][:email]}"
#    puts "Sally Johnson number is  #{contacts['Sally Johnson'][:number]}"

#    contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
#    contacts = {"Joe Smith" => {}}
#    fields = [:email, :address, :phone]
#   # Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
#    contacts.each do |name, hash|
#      fields.each do |field|
#        hash[field] = contact_data.shift
#      end
#    end
#    p hash
   #As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
#    contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#    ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# fields = [:email, :address, :phone]

# contacts.each_with_index do |(name, hash), idx|
# fields.each do |field|
# hash[field] = contact_data[idx].shift
# end
# end
# p hash 

# Use Ruby's Array method delete_if and String method start_with?
#  to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if{|words| words.start_with?('s','w')}
p arr



a = ['white snow', 'winter wonderland', 'melting ice',
    'slippery sidewalk', 'salted roads', 'white trees']
    a.map do |words| #map return loop  and new array
       b= words.split #split characters
     p  b.flatten     #flatten return one array 

    end
