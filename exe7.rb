#gets input 
#input number should print out number by number multiplication
#input = 4
#1 2 3 4
#2 4 6 8
#3 6 9 12
#4 8 12 16
#align rows and columns
#add border between cell in tabel
puts "enter number"
num=gets.chomp.to_i
for  y in (0..num)
    for x in (0..num)
        #space= ""
        if y == 0
            if x == 0
                space = "x"
            else
                space = "#{x}"
            end

        else 
            if x == 0
                space = "#{y}"
            else
                space = "#{x * y}"

            end
        end
        print space.ljust(4," ")
    end
    puts
    puts

end
