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

puts hash
puts hash2

number = 0
times = 0
shows_text = ""
generated_text = ""

3.times do |i|
  print "What number do you want information about? "
  number = gets.chomp.to_i
  puts "Using only the first hash:"
  hash.values.each do |array|
    array.each do |num|
      if num == number
        times += 1
      end
      if times > 0
        shows_text = "shows up #{times} time(s)"
      else
        shows_text = "did not show"
      end
      if hash.values[0] == array
        generated_text = "in the randomly generated numbers."
      else
        generated_text = "in the user generated numbers."
      end
    end
    puts "The number, #{number}, #{shows_text} #{generated_text}"
    times = 0
  end
  puts "Using only the second hash:"
  hash2.values.each do |list|
    if list.has_key?(number)
      times = list[number]
      shows_text = "shows up #{times} time(s)"
    else
      shows_text = "did not show"
    end
    if hash2.values[0] == list
      generated_text = "in the randomly generated numbers."
    else
      generated_text = "in the user generated numbers."
    end
    puts "The number, #{number}, #{shows_text} #{generated_text}"
    times = 0
  end
end
