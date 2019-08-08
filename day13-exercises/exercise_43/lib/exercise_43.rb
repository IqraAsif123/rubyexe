def average(n1,n2)
    ave1=(n1.to_f + n2.to_f)/2
    return ave1.to_f
end


def average_array(array)
    ave2=array.sum.to_f / array.length.to_f 
    return ave2.to_f
end


def repeat(string,num)
    repeat1 =(string*num)
       return repeat1
end


def yell(string)
    yell=string.upcase + "!"
    return yell
end


def alternating_case (string)
split1=string.split()
string2=split1.map.with_index do |word,index|

    if index.even?
        word.upcase
    else
   word.downcase
    end
end
return string2.join (" ")
end


def hipsterfy(word)
remove=word.reverse.sub(/[aeiou]/,"").reverse
return remove
end


def vowel_counts(string)
string=string.downcase
hash=Hash.new(0)
 string.chars.map do |c|
    if c =~/[aeiou]/
        hash[c] +=1
    end
end
return hash
end


def caesar_cipher (string, number)
    caesar_string = ""

    string.scan (/./) do |i|
      if ("a".."z").include? (i.downcase) 
        number.times {i = i.next}
      end
      caesar_string << i[-1]
    end
    return caesar_string
end
