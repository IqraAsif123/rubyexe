# def unique_chars?(string)
#     string.each_char.find do |char| 
#       if  string.count(char) > 1 
#         return false
#       else
#        return true
#     end
# end
# end
# p unique_chars?("abacd")
# p unique_chars?("abcd")
# p unique_chars?("aabbs")
# p unique_chars?("aahbrjf")
# p unique_chars?("abcdfs")



# def dupe_indices(array)
    # arr=[]
    # h={}.compare_by_identity
    # array.each_with_index do|k,v| 
    #     h[k] =v
    #     # h.each do |k,v|
    #     #     if h.has_key?(h.keys[0] == h.keys)
    #     #         return h.keys 
    #     #     end
    #     # end
    # end
    # return h
# end
#  p dupe_indices(["a", "b", "c", "c", "b"])
# a={"a"=>0, "b"=>1, "c"=>2, "c"=>3, "b"=>4}
#  merged_hash = a.each_with_object({})  do |item,hsh|
# k,v = item.shift
# (hsh[k] ||= []) << v
# end

# merged_hash.map { |k,v| { k => v } }






def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true

end
  
  def largest_prime_factor((num)
    # list = (2...num).to_a
    divisors = (2...num).select{|i| prime?(i)}
    divisors.select{|i| num % i == 0 }.max
  end 
  p largest_prime_factor(15)