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

hash2 = {
  computer_generated: {},
  user_generated: {}
}

hash[:random_numbers].each do |i|
  puts i
  if hash2[:computer_generated].key?(i)
    hash2[:computer_generated][i] += 1
  else
    hash2[:computer_generated][i] = 1
  end
end

hash[:user_input].each do |i|
  puts i
  if hash2[:user_generated].key?(i)
    hash2[:user_generated][i] += 1
  else
    hash2[:user_generated][i] = 1
  end
end

puts hash2
