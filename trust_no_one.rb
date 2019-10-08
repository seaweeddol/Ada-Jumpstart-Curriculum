# Program that does not add value to total unless the user enters it twice in a row
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i
input_check = 0

while input > -1
  if input != input_check
    input_check = input
  else
    total += input
  end
  input = gets.chomp.to_i
end

puts "Result: #{total}"
