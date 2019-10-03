print "This program will determine if a number is divisible by 3 or not.
How many times you would like to run this program? "

count = gets.chomp.to_i

=begin
# While loop that asks for three numbers and prints out if they are divisible by 3 or not.

i = 0

while i < count do
  print "Enter a positive integer value: "
  num = gets.chomp.to_i
  if num % 3 == 0
    puts "#{num} is divisible by 3."
  else
    puts "#{num} is not divisible by 3."
  end
  i += 1
end
=end

# While loop that asks for three numbers and prints out if they are divisible by 3 or not.
count.times do
  print "Enter a positive integer value: "
  num = gets.chomp.to_i
  if num % 3 == 0
    puts "#{num} is divisible by 3."
  else
    puts "#{num} is not divisible by 3."
  end
end
