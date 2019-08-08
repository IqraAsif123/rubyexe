# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)

end


def unique_chars?(string)
    string.each_char.find do |char| 
      if  string.count(char) > 1 
        return false
    #   else
    #     return true
    end
    return true
end
end


def dupe_indices(array)
    arr=[]
    h={}.compare_by_identity
    array.each_with_index do|k,v| 
        h[k] =v
        # h.each do |k,v|
        #     if h.has_key?(h.keys[0] == h.keys)
        #         return h.keys 
        #     end
        # end
    end
    return h
end


def ana_array(arr1,arr2)
    arr1.each do |word1|
        arr2.each do |word2|
            return true if word1 == word2
            # return false if word1 != word2
        end
    end
    false
end

