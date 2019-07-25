# given is the array as your initail data convert it to a Array of hash
# you may not use .t0_h or .flatten method

data_arr =[
["Name", "Position", "Age", "Salary"],
["Adrian Lim", "Salesperson", "24", "RM2000"],
["John Smith", "Clerk", "31", "RM 2300"],
["Shafie Abdullah", "Manager", "27", "RM3000"]
]

 main_array = []
 second = {} #hash for adrian
 third={}    #hash for jhon
 fourth={}   #hash for shafie
data_arr.each_with_index do |el, index| #loop through main array
    second[data_arr[0][index]]=data_arr[1][index] #adrian hash has the key from data_arr's zeros array and set it to the value of data_arr's fst array
    third[data_arr[1][index]]=data_arr[2][index]#adrian hash has the key from data_arr's fst array and set it to the value of data_arr's second array
    fourth[data_arr[2][index]]=data_arr[3][index]#adrian hash has the key from data_arr's fst array and set it to the value of data_arr's third array
end
#now i have all set up with hashes 
#push all the hashes into one hash to get one array of hashes
p second
p third
p fourth
main_array << second
main_array << third
main_array << fourth
p main_array

#there is another method described in ruby3.rb
#it can solved if data_arr (0) is separated as a hash containing keys hash=[:Name, :Position, :Age, :Salary]
#each key should have the value as hash[:name]=data_arr[1][0] it will assign name to "Adrian Lim" and same for other values
#repeating this line of code will give one hash for Adrina only 
#apply this to all characters
#push all the hashes into main array 