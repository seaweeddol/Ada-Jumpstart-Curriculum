# program that takes user input and then checks if the input is greater than or less than 20 and prints a string
print "This program will ask you to enter numbers and share if the number is less than 20.
Enter the 1st number: "
user_input = gets.to_i

if user_input >= 20
  puts "#{user_input} is greater than or equal to 20."
else
  puts "#{user_input} is less than 20."
end

print "Enter the 2nd number: "
user_input2 = gets.to_i

if user_input2 >= 20
  puts "#{user_input2} is greater than or equal to 20."
else
  puts "#{user_input2} is less than 20."
end

print "Enter the 3rd number: "
user_input3 = gets.to_i

if user_input3 >= 20
  puts "#{user_input3} is greater than or equal to 20."
else
  puts "#{user_input3} is less than 20."
end
