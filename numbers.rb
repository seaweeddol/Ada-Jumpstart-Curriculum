# program that takes user input of three numbers, and then prints them out with 20 added to each number in a string
prompt = "enter three numbers"
puts prompt
user_input = gets.to_i
user_input2 = gets.to_i
user_input3 = gets.to_i

# add 20 to each user input
user_input += 20
user_input2 += 20
user_input3 += 20

puts "Twenty added to the numbers you entered gives us #{user_input}, #{user_input2}, and #{user_input3}."
