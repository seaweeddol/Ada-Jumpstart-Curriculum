# program that plays duck duck goose. Allows user to enter player number that should be the goose, and says duck until they get to that player number

puts "Which player do you want to Goose? "
goose = gets.chomp.to_i

# print out each player as Duck until the number specified
(1..goose - 1).each do |num|
  puts "Player #{num}: Duck"
end

puts "Player #{goose}: Goose"
