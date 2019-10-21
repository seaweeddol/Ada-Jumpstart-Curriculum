# program that takes user input and then checks if the input is greater than or less than 20 and prints a string
puts "This program will ask you to enter numbers and share if the number is less than 20."

3.times do |i|
  print "Enter number ##{i + 1}: "
  user_input = gets.to_i

  if user_input >= 20
    puts "#{user_input} is greater than or equal to 20."
  else
    puts "#{user_input} is less than 20."
  end
end
