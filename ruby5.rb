# day_orgnaizer = []
# def time_coverter(time)
#  the_split= time.split(":")
#  hours= time.split.first.to_i
#  minutes= the_split.last.to_i
#  # hours, minutes = before.split(':')
#  if (1..11)===hours
#      return "#{hours}:#{minutes} AM"
#  elsif (13..23)===hours
#      return "#{new_hours = hours - 12}:#{minutes} PM"
#  elsif hours == 0
#      return "#{new_hours = hours + 12}:#{minutes} AM"
#  elsif hours == 12
#      return "#{hours}:#{minutes} PM"
#  end
# end

# while true
#  puts "Enter military time or standered time (ex: 16:30) (ex: 4:30pm)"
#  time = gets.chomp
#  if time.match(/\d\d:?\d\d(AM|PM)?/)
#     puts "Enter Activity"
#     activity = gets.chomp
#     puts " Do you want to stop N/Y"
#     continue = gets.chomp.downcase
#     daily = {
#        "time":time_coverter(time),
#        "activity":activity
#     }
#     day_orgnaizer.push(daily)
#     break if continue=="Y"
#  else
#     puts "Enter a valid time"
#  end

# end
# sorted_activity= day_orgnaizer.sort_by {|hsh| hsh[:time]}
# i=0
# while i < sorted_activity.length

# sorted_activity[i].each {|key, value| puts "#{key} - #{value}"}
# i=i+1
# end
runs = {}
puts "How many miles did you run?"
miles = gets.chomp
puts "How long did it take you?"
time = gets.chomp

runs[miles] = time

# When user enters `review`
runs.each do |miles, time|
   p "#{miles} miles in #{time} minutes."
end
