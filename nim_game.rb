# Write a Ruby program that allows two users to play a game of Nim together.

$players = {}
$piles = {}
$turn = 1
continue = "Y"

# method to create piles
def create_piles(num)
  # assign each pile a random number between 1-5 and an alphabet key
  num.times do |i|
    $piles[:"#{(i + 65).chr}"] = rand(1..5)
  end
end

# method to ask user for pile and amount to remove
def pile_check()
  choice_valid = false
  until choice_valid
    pile_choice = gets.chomp.to_s.upcase
    # if pile_choice is not in piles hash, prompt user again
    if !$piles.key?(:"#{pile_choice}")
      print "That pile does not exist. Choose again: "
    # if pile_choice is empty, prompt user again
    elsif $piles[:"#{pile_choice}"] == 0
      print "Pile #{pile_choice} is empty! Choose again: "
    else
      until choice_valid == true
        print "How many sticks would you like to remove? "
        amount = gets.to_i
        # if amount provided is greater than pile amount or 0, show error message
        if amount > $piles[:"#{pile_choice}"] || amount == 0
          puts "You cannot remove #{amount} from pile."
        # if amount is valid, update pile and set choice_valid to true to stop the loop
        else
          $piles[:"#{pile_choice}"] -= amount
          choice_valid = true
        end
      end
    end
  end

  # return pile choice and amount to moves array
  return $players[:"player#{$turn % 2 + 1}"][:moves].push("#{pile_choice}: #{amount}")
end

# ask each user for name and initialize hash keys
(1..2).each do |i|
  $players[:"player#{i}"] = {}
  print "What is player #{i}'s name? "
  $players[:"player#{i}"][:name] = gets.chomp.capitalize
  $players[:"player#{i}"][:score] = 0
  $players[:"player#{i}"][:moves] = []
end

# run program until user wants to stop
until continue == "N"
  # ask user for game difficulty
  print "Select your game difficulty (easy, medium, hard): "
  difficulty = gets.chomp.downcase

  # create piles hash based on difficult selected
  if difficulty == "easy"
    create_piles(2)
  elsif difficulty == "medium"
    create_piles(3)
  else
    create_piles(7)
  end

  # randomly decide first player
  first_player = $players.keys.sample
  puts "The first player is #{$players[:"#{first_player}"][:"name"]}"

  # run game until all piles are empty
  until $piles.values.all? {|a| a == 0}
    puts $piles
    if $players[:"player#{[$turn % 2]}"] == first_player
      print "#{$players[:"player#{$turn % 2 + 1}"][:"name"]}, choose a pile: "
    else
      print "#{$players[:"player#{$turn % 2 + 1}"][:"name"]}, choose a pile: "
    end

    $players[:"player#{$turn % 2 + 1}"][:"moves"].push(pile_check())
    $turn += 1
  end

  # add 1 to winner's score
  $players[:"player#{$turn % 2 + 1}"][:"score"] += 1

  # print out game summary
  puts "#{$players[:"player#{$turn % 2 + 1}"][:"name"]} is the winner!"
  print "Move summary:
  #{$players[:"player1"][:"name"]} moves: #{$players[:"player1"][:"moves"]}
  #{$players[:"player2"][:"name"]} moves: #{$players[:"player2"][:"moves"]}"

  print "Would you like to play again (Y/N): "
  continue = gets.chomp.upcase

  #reset moves
  $players[:"player1"][:"moves"] = []
  $players[:"player2"][:"moves"] = []
end

print "\nTotal score:
#{$players[:"player1"][:"name"]}: #{$players[:"player1"][:"score"]}
#{$players[:"player2"][:"name"]}: #{$players[:"player2"][:"score"]}"
