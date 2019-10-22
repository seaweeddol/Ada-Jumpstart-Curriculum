# Write a Ruby program that allows two users to play a game of Nim together.

players = []
piles = {}

# ask user for name (player1)
print "What is player 1's name? "
players.push(gets.chomp.capitalize)
# ask second user for name (player2)
print "What is player 2's name? "
players.push(gets.chomp.capitalize)

# ask user for game difficulty (easy = 2 piles, medium = 3 piles, hard = 7 piles)
print "Select your game difficulty
Easy = 2 piles
Medium = 3 piles
Hard = 7 piles
Difficulty: "
difficulty = gets.chomp.downcase

# create piles hash based on difficult selected
if difficulty == "easy"
  2.times do |i|
    piles[:"#{(i + 65).chr}"] = rand(1..5)
  end
elsif difficulty == "medium"
  3.times do |i|
    piles[:"#{(i + 65).chr}"] = rand(1..5)
  end
else
  7.times do |i|
    piles[:"#{(i + 65).chr}"] = rand(1..5)
  end
end

puts piles

# randomly decide first player (0..1)
first_player = players[rand(0..1)]
puts "The first player is #{first_player}"

# game code
# until all piles are empty
until piles.all? {|a| a == 0}
  turn = 0
  if players[turn % 2] = first_player
    print "Player 1, choose a pile: "
    pile_choice = gets.chomp.to_s.upcase
    puts pile_choice
    puts piles[:"#{pile_choice}"]
    if !piles.key?(:"#{pile_choice}")
      puts "That pile does not exist."
    elsif piles[:"#{pile_choice}"] == 0
      puts "Pile #{pile_choice} is empty! Choose again"
    else
      print "How many sticks would you like to remove? "
      amount = gets.to_i
      if amount > piles[:"#{pile_choice}"] || amount == 0
        puts "You cannot remove #{amount} from pile."
      else
        piles[:"#{pile_choice}"] -= amount
      end
    end
  end
end
#       if pile_choice != available_pile
#         print "that pile does not exist"
#       elsif pile_choice_amount == 0
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
