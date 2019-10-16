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
  if hash2[:computer_generated].key?(i)
    hash2[:computer_generated][i] += 1
  else
    hash2[:computer_generated][i] = 1
  end
end

hash[:user_input].each do |i|
  if hash2[:user_generated].key?(i)
    hash2[:user_generated][i] += 1
  else
    hash2[:user_generated][i] = 1
  end
end

number = 0
times = 0
randomly_generated = ""
user_genereated = ""

3.times do |i|
  print "What number do you want information about? "
  number = gets.chomp.to_i
  if hash[:random_numbers].include?(number)
    hash[:random_numbers].each do |num|
      if num == number
        times += 1
      end
    end
    randomly_generated = "shows up #{times} time(s)"
  else
    randomly_generated = "did not show"
  end
  puts "The number, #{number}, #{randomly_generated} in the randomly generated numbers."
  times = 0
end
