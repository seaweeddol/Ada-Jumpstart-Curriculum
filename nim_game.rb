# Write a Ruby program that allows two users to play a game of Nim together.
#
# ask user for name (player1)
# ask second user for name (player2)
# ask user for game difficulty (easy = 2 piles, medium = 3 piles, hard = 7 piles)
#   if difficulty = easy
#     piles = 2
#     each pile randomized 1..5 sticks
#   elsif difficulty = medium
#     piles = 3
#     each pile randomized 1..5 sticks
#   else difficulty = hard
#     piles = 7
#     each pile randomized 1..5 sticks
#   end
#
# randomly decide first player (0..1)
#
# game code
# until all piles are empty
#   if i % 2 = 0,
#     player 1, choose a pile
#       if pile_choice != available_pile
#         print "that pile does not exist"
#       elsif pile_choice_amount == 0
#         print "pile () is empty! Choose again"
#       else
#         until amount is valid
#           print "how many would you like to remove? "
#           amount = gets.to_i
#           if amount > pile_choice_amount OR amount == 0
#             print "you cannot remove # from pile"
#           end
#         end
#         pile_choice_amount -= amount
#         push pile choice and pile choice amount to array
#       end
#     end
#   else player 2
#
# after game finishes:
# print winner
# print player #1 score
# print player #1 move summary
# print player #2 score
# print player #2 move summary
#
# puts "would you like to play another game? (Y/N)"
# get user input y/n
# if Y
#   start new game
# else
#   print total scores across all games played
# end
