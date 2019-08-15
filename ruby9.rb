# require "byebug"
# class BoggleBoard
#     attr_accessor :row, :empty
#     def initialize(length=4)
#         @length=length
#         @row = []
#         @empty=[]
#         @shake=[]
#     end


#     def print_board
#         for i in (1..@length) do
#             @empty << "_" * @length
#         end
#         @empty
#         # @row.each_with_index do |sting,index|
#         #     @empty.each_with_index do |lines,index|
#         #         if sting[index] == lines[index]
#         #             sting[index]= lines[index]
#         #         end
#         #     end
#         # end
#     end



#     def shake!
        
#         answer = ""
#         for i in (1..4) do
#             for i in (0..0) do
#                 @length.times do |i|
#                    answer << (("A".."Z").to_a)[rand(26)]
#                 end #answer is  a string  of 16 random letters
#             end
#         end
#         array = answer.chars.each_slice(4).map(&:join)
#         @row<<  array.each_slice(1).to_a
#         @row
#     end
#     def shake_again
#         loop do
#             @shake<< [*('A'..'Z')].sample(4).join('')
#             if @shake.length == 4
#             break
#             end
#         end
#           @shake
#     end

#     def dice
           
#     end    
  
#     # Defining to_s on an object controls how the object is
#     # represented as a string, e.g., when you pass it to puts
#     def to_s
#       "What is this? Try printing me! "
#     end
#   end
  
#   # DRIVER CODE BELOW: PLEASE WRITE IT #
#   board = BoggleBoard.new
#   puts   board.print_board()
#     puts board.shake!
#     puts ""
#     puts "second shake"
#     puts ""
#     puts board.shake_again
#     puts board.to_s