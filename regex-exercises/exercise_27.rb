# puts"what if you add a time in military time "
# puts "e.g. 16:30 can be converted to the standard time e.g.04:30pm"
# time = gets.chomp
# first_time =time[0..1].to_i
# minutes=time[3..4].to_i
# puts "here you go!"


# if first_time <= 12
#     hour = first_time
#     period ="AM" 
# elsif first_time > 12
#     hour= first_time - 12
#     period="PM"
# end

# puts "your time is #{hour}:#{minutes} #{period}"
hash=Hash.new(0)
loop do
puts "input the time as standard time" 
input_one=gets.chomp
if input_one.match( /\b((1[0-2]|0?[1-9]):([0-5][0-9])([AaPp][Mm]))/)
   # hash[input_one]=input_two
puts "what do you do at this time"
input_two=gets.chomp
hash[input_one]=input_two
puts "is this the last activity "
input_three=gets.chomp
if input_three == "yes"
    #p hash
    hash.each do |k,v|
        p "#{k} - #{v}"
    end
    break
end
end
end