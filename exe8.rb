# use rand method generate number between 1 and 1000
# user have to guess number 
# if the guess is too high say colder
# when guess too low say hotter 
# if user guesses the number they win
puts "guess  the number"
number = gets.chomp.to_i
rand(1..1000)
guess=200
     if number < guess
        puts "hotter"
     elsif number > guess
        puts "colder"
     else number  == guess
        puts "win!"
    
    end