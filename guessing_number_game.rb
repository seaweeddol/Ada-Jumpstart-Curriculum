# program that generates a random number 0-1000 and then allows the user to guess until they get the answer

number = rand(999)
guess = ""
guess_count = 0

while guess != number
  print "Guess my number: "
  guess = gets.chomp.to_i
  if guess > number
    puts "LOWER"
  else
    puts "HIGHER"
  end
  guess_count += 1
end

print "YOU GOT IT IN #{guess_count} GUESSES!"
