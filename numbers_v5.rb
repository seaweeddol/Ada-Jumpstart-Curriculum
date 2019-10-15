hash = {
  random_numbers: [],
  user_input: []
}

5.times do |i|
  hash[:random_numbers].push(rand(12..21))
end

5.times do |i|
  print "Enter a number between 12 and 21: "
  hash[:user_input].push(gets.chomp.to_i)
end

puts hash
