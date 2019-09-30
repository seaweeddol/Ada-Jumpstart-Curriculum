prompt = "enter three numbers"
puts prompt
user_input = gets.to_i
user_input2 = gets.to_i
user_input3 = gets.to_i

user_input += 20
user_input2 += 20
user_input3 += 20

puts "Twenty added to the numbers you entered gives us #{user_input}, #{user_input2}, and #{user_input3}."
