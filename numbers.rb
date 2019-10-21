# program that takes user input of three numbers, and then prints them out with 20 added to each number in a string
numbers = []

3.times do |i|
  puts "Enter ##{i}: "
  numbers[i] = gets.chomp.to_i + 20
end

puts "Twenty added to the numbers you entered gives us #{numbers[0]}, #{numbers[1]}, and #{numbers[2]}."
