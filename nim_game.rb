# Write a Ruby program that allows two users to play a game of Nim together.

$players = {}
$piles = {}

# create piles
def create_piles(num)
  num.times do |i|
    $piles[:"#{(i + 65).chr}"] = rand(1..5)
  end
end

def pile_check()
  choice_valid = false
  until choice_valid
    pile_choice = gets.chomp.to_s.upcase
    puts "#{pile_choice}: #{$piles[:"#{pile_choice}"]}"
    if !$piles.key?(:"#{pile_choice}")
      print "That pile does not exist. Choose again: "
    elsif $piles[:"#{pile_choice}"] == 0
      print "Pile #{pile_choice} is empty! Choose again: "
    else
      until choice_valid == true
        print "How many sticks would you like to remove? "
        amount = gets.to_i
        if amount > $piles[:"#{pile_choice}"] || amount == 0
          puts "You cannot remove #{amount} from pile."
        else
          $piles[:"#{pile_choice}"] -= amount
          choice_valid = true
        end
      end
    end
  end
end

# ask user for name (player1)
(1..2).each do |i|
  $players[:"player#{i}"] = {}
  print "What is player #{i}'s name? "
  $players[:"player#{i}"][:name] = gets.chomp.capitalize
  $players[:"player#{i}"][:score] = 0
end

puts $players

# ask user for game difficulty
print "Select your game difficulty
Easy = 2 piles
Medium = 3 piles
Hard = 7 piles
Difficulty: "
difficulty = gets.chomp.downcase

# create piles hash based on difficult selected
if difficulty == "easy"
  create_piles(2)
elsif difficulty == "medium"
  create_piles(3)
else
  create_piles(7)
end

# randomly decide first player (0..1)
first_player = $players.keys.sample
puts "The first player is #{$players[:"#{first_player}"][:"name"]}"

turn = 1

until $piles.values.all? {|a| a == 0}
  puts $piles
  if $players[:"player#{[turn % 2]}"] == first_player
    print "#{$players[:"player#{turn % 2 + 1}"][:"name"]}, choose a pile: "
    pile_check()
  else
    print "#{$players[:"player#{turn % 2 + 1}"][:"name"]}, choose a pile: "
    pile_check()
  end
  turn += 1
end

# after game finishes:
$players[:"player#{turn % 2 + 1}"][:"score"] += 1
puts "#{$players[:"player#{turn % 2 + 1}"][:"name"]} is the winner!"

print "Game summary:
#{$players[:"player1"][:"name"]}: #{$players[:"player1"][:"score"]}
#{$players[:"player2"][:"name"]}: #{$players[:"player2"][:"score"]}"
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
