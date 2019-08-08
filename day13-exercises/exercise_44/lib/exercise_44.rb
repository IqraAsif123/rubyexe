def partition(array,num1)
    array1=[]
    array2=[]
    newarray=[]
    array.each do |value|
        if value < num1
            array1.push(value)
        else value >= num1
         array2.push(value)
        end
    end
    return newarray.push(array1,array2)
end


def merge(hash1,hash2)
    hash3=[]
    hash3=hash1.merge(hash2)
    return hash3
end


def censor(sentence,array)
    vowels = ("aeiOou")
    words = sentence.split()
    new_sentence = []
    words.each do |word|
        if array.include?(word.downcase)
            new_word = []
            word.each_char do |letter|
                if vowels.include?(letter)
                    new_word << "*"
                else
                    new_word << letter
                end
            end
            new_sentence << new_word.join("")
        else
            new_sentence << word
        end
    end
    return new_sentence.join(" ")
end


def power_of_two?(number)
    return true if number == 1
    return false if number == 0 || number % 2 != 0
    power_of_two?(number / 2)
end


def palindrome?(string)
    string_split= string.split()
    result=[]
    string.size.times do result << string_split.pop
    end
    reversed=result.join()
    if reversed == string 
        true
    else
        false
    end
end


def substrings(string)
    result = []
    split = string.split("")
    length = split.length
    (0..length).each do |fstele|
      (fstele..length-1).each do |secele|
     result << split[fstele..secele].join
      end
    end
    return result.uniq
  end

 
def palindrome_substrings(string)
    array=[]

    return array
end