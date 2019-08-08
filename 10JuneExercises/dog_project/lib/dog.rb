class Dog

def initialize(name,breed,age,bark,favorite_foods)
    @name=name
    @breed=breed
    @age=age
    @bark=bark
    @favorite_foods=favorite_foods
end
#getter
def name
    @name
end
def breed
    @breed
end
def age
    @age
end


#set
def age=(num)
    @age = num
end
def bark
        if @age > 3
            @bark.upcase
        else
            @bark.downcase
        end
end
def favorite_foods
    @favorite_foods
end
#instance method
def favorite_food?(item)
    favorite_foods.each do |items|
      if items.downcase == item.downcase
        return true
      # else
      #   next
      end
      #return false
    end
    return false
end
end
