#generate a square
#input time long and input time tall
#e.g input is 5
# =====
# =   =
# =   =
# =   =
# =   =
# =   =
# =====



puts "input number for square"
num = gets.chomp.to_i
   for i in (1..num) do 
     if i == 1 || i == num 
       puts "=" * num
     else 
      puts "=" + (" " * (num - 2)) + "="
     end

   end
