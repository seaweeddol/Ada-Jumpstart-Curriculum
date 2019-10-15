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

fire_array = ["firetruck", "fire drill", "fire hydrant", "firefighter", "fireproof", "fire station", "fire hose"]

fire_array.each do |word|
  word.slice!("fire")
  print word
end

puts fire_array
