# create first hash
first_hash = {
  random_numbers: [],
  user_input: []
}

# add 5 random numbers to the first array in first_hash
5.times do |i|
  first_hash[:random_numbers].push(rand(12..21))
end

# add 5 numbers provided by the user to the second array in first_hash
5.times do |i|
  print "Enter a number between 12 and 21: "
  first_hash[:user_input].push(gets.chomp.to_i)
end

# create second hash
second_hash = {
  computer_generated: {},
  user_generated: {}
}

# fill second_hash with random_numbers values from first_hash
first_hash[:random_numbers].each do |i|
  # if key already exists, add 1 to the value
  if second_hash[:computer_generated].key?(i)
    second_hash[:computer_generated][i] += 1
  else
    second_hash[:computer_generated][i] = 1
  end
end

# fill second_hash with user_input values from first_hash
first_hash[:user_input].each do |i|
  if second_hash[:user_generated].key?(i)
    second_hash[:user_generated][i] += 1
  else
    second_hash[:user_generated][i] = 1
  end
end

puts first_hash
puts second_hash

number = 0
times = 0
shows_text = ""
generated_text = ""

# ask user for number and provide information about how many times that number appears in each hash
3.times do |i|
  print "What number do you want information about? "
  number = gets.chomp.to_i
  puts "Using only the first hash:"
  # loop through each array in first_hash
  first_hash.values.each do |array|
    # loop through each number in the array, and add 1 to times each time it appears
    array.each do |num|
      if num == number
        times += 1
      end
      # check if number showed up
      if times > 0
        shows_text = "shows up #{times} time(s)"
      else
        shows_text = "did not show"
      end
      # check if array is the randomly or user generated one to determine what text to append
      if first_hash.values[0] == array
        generated_text = "in the randomly generated numbers."
      else
        generated_text = "in the user generated numbers."
      end
    end
    puts "The number, #{number}, #{shows_text} #{generated_text}"
    times = 0
  end
  puts "Using only the second hash:"
  # loop through each value in the second hash
  second_hash.values.each do |list|
    # if number exists in second_hash, assign key to times variable and update shows_text
    if list.has_key?(number)
      times = list[number]
      shows_text = "shows up #{times} time(s)"
    else
      shows_text = "did not show"
    end
    # check if array is the randomly or user generated one to determine what text to append
    if second_hash.values[0] == list
      generated_text = "in the randomly generated numbers."
    else
      generated_text = "in the user generated numbers."
    end
    puts "The number, #{number}, #{shows_text} #{generated_text}"
    times = 0
  end
end
