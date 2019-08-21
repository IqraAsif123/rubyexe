require "byebug"

class Cookies
    attr_accessor :recommended_time 
    def initialize(recommended_time)
        @recommended_time = recommended_time
    end
    def recommended
             "your #{$name_of_cookie} requires our recommended #{self.recommended_time} seconds "
    end
    def cookie_status cookies= Cookies.new([])

        if $time_for_cookie == @recommended_time
            "your cookies are ready"
        elsif $time_for_cookie == (@recommended_time - 2)
            "your cookies are almost ready"
        elsif $time_for_cookie < @recommended_time
            "your cookies are doughy"
        elsif $time_for_cookie > @recommended_time
            "your cookies are burned"
        end
    end 
    end
class Chocolate_chips < Cookies
    def initialize
        super(15)
        # @temperature = 100
    end
   
end

class Peanut_butter < Cookies
    def initialize
        super(10)
        # @temperature = 120
    end
end


class Oven
    attr_accessor :recommended_quantity
    def initialize(recommended_quantity=10)
        @recommended_quantity = recommended_quantity  
    end
    def recommended_size
        "our recommended size of tray is #{self.recommended_quantity}"
    end
    def tray
        if $quantity <= @recommended_quantity
            "your #{$name_of_cookie} are in the oven "
         elsif $quantity > @recommended_quantity
             "you need to wait for them "
        end
    end
    def bigger_tray
        #  if $quantity > @recommended_quantity
            for i in (0..$time_for_cookie).to_a.reverse
            end
        #  end
    end
end

#//////////////////////////////////////////////////////////////////////////////////////////////
 chocolate_chips= Chocolate_chips.new
 peanut_butter= Peanut_butter.new
 oven = Oven.new
puts "welcom to recode bakery.How can i help you,or you wanna look at list"

puts "1) peanut_butter"
puts "2) chocolate_chips"
x="" 
while x !="NO" do
    puts "what cookies you want to bake"
$name_of_cookie =gets.chomp().to_s
if $name_of_cookie == "peanut_butter" || $name_of_cookie == "chocolate_chips"
    break
else
    puts "sorry we don't have it order from the list"
end
end
puts oven.recommended_size
puts "how many cookies you want"
$quantity= gets.chomp.to_i 
puts oven.tray


if $name_of_cookie == "chocolate_chips" 
 p chocolate_chips.recommended
elsif $name_of_cookie == "peanut_butter"
 p peanut_butter.recommended
end


puts "how many sec you want to bake your cookie"
$time_for_cookie = gets.chomp().to_i
 puts " #{$quantity} #{$name_of_cookie} cookies are in the oven  "



for i in (0..$time_for_cookie).to_a.reverse
    sleep(0.2)
     puts "#{i} seconds to go"
end
if $name_of_cookie == "peanut_butter"
    sleep(1)
 puts peanut_butter.cookie_status
elsif $name_of_cookie == "chocolate_chips"
puts chocolate_chips.cookie_status
end



#get the instance variable outside theclass
oven.bigger_tray
if $quantity  > oven.instance_variable_get(:@recommended_quantity)
puts "your batch of remaning #{$name_of_cookie} is proceeding"
# puts oven.bigger_tray 
for i in (0..$time_for_cookie).to_a.reverse
    sleep(0.2)
     puts "#{i} seconds to go"
end
if $name_of_cookie == "peanut_butter"
    sleep(1)
 puts peanut_butter.cookie_status
elsif $name_of_cookie == "chocolate_chips"
puts chocolate_chips.cookie_status
end
end
 # still some part to work on 