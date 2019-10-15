# Create an array to store 5 names. Have the user enter in the 5 names and then print out the 5 names in all UPPERCASE all on the same line. Note that the user may not enter all the names in uppercase.

# names = []
# 5.times do |i|
#   print "Enter a name: "
#   names[i] = gets.chomp.upcase
# end
#
# puts names.join(' ')

# Create an array to store 3 boolean values entered in by the user. Print out YES if all the values are true and NO if at least one value is false.

# boolean = []
# boolean_print = "YES"
#
# 3.times do |i|
#   print "Enter true or false: "
#   boolean[i] = gets.chomp.downcase
#   if boolean[i] == "true"
#     boolean[i] = true
#   else
#     boolean[i] = false
#   end
# end
#
# if boolean.include?(false)
#   boolean_print = "NO"
# end
#
# puts boolean_print

# Create an array to store the following words: firetruck, fire drill, fire hydrant, firefighter, fireproof, fire station, fire hose. Then write code that uses the array to print out truck, drill, hydrant, fighter, proof, station, hose without modifying the array.

# fire_array = ["firetruck", "fire drill", "fire hydrant", "firefighter", "fireproof", "fire station", "fire hose"]
#
# fire_array.length.times do |i|
#   puts fire_array[i].slice!("fire")
#   puts fire_array[i]
# end
#
# puts fire_array

# Create an array to store the amount of money spent on 4 people during the Holidays. Have the user enter in the amount spent on each person. Print the total spent on all the people. Total money spent should be displayed with a dollar sign, decimal point, and only 2 digits after the decimal.

# money_spent = []
# people = ["Jenny", "John", "Roberta", "Max"]
# total = 0
#
# 4.times do |i|
#   print "How much was spent on #{people[i]}? "
#   money_spent[i] = gets.chomp.to_f
#   total += money_spent[i]
# end
#
# puts "$#{total.round(2)}"

# Create an array to store 5 random numbers (between 1 and 10, including both 1 and 10) generated by the computer. Print out the square of each of the elements in the array.

random_numbers = []

5.times do |i|
  random_numbers[i] = rand(1..10)
  puts random_numbers[i] * random_numbers[i]
end
