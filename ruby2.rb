#some conditional in while loop
# x=0
# while x <=10
#     if x.odd?
#         p x #it will print odd number only if there is any
#     end
#     x= x+1
# end


# x = 0
# until x == 10
#     p x
#     if x > 5 # code will  run until 6 
#         break
#     end
# end
#     x =  x+ 1
# end



#x = 0

# while x <= 10
#   if x == 7 # it will work until 7 but out put will be 8 
#     break
#   elsif x.odd? # in above condition the output is 8 which is not the odd number so it will run until 5 only
#     puts x
#   end
#   x += 1
# end




# #iteratio
# #mixing iteration with arrays of strings
# array= [ 'one', 'two','three']

# x= 1
# array.each do |word|
# p "#{x}" + "#{word}"
# x = x +1
# end




# x = [1, 2, 3, 4, 5]
# x.each do |a|
#    p a + 1 # return each a + 1 => 1+1=2 , =>1+2=3
# end


#Write a while loop that takes input from the user, 
#performs an action, and only stops when the user types "STOP". Each loop can get info from the user.


  x= ''
  while x != "stop" do 
      p "whats your input"
      ans= gets.chomp      #this code will stop when input is "stop"
      if ans == "stop"
         break
      else    p "you have to try again "
          ans= gets.chomp
      end
  end 
    

# x = ""
# while x != "STOP" do
#   puts "Hi, How are you feeling?"
#   ans = gets.chomp            #this will ask for input again and agian 
#   puts "Want me to ask you again?"
#   x = gets.chomp
# end




#Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.
# x=0
# array= ['i','have','one','array']
# array.each do |word|              #when number is defned outside 
#     puts "#{x} .  #{word}"
# x=x + 1
# end




# top_five_games = ["mario brothers",
#     "excite bike",
#     "ring king",                    #index in defined within the loop
#     "castlevania",
#     "double dragon"]

# top_five_games.each_with_index do | game, index |
# puts "#{index}. #{game}"
# end