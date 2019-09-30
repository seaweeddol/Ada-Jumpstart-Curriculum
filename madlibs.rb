# introduction to program
puts "Welcome to MadLibs! Please enter the information below."

# ask for user input, then save user input to variable, remove new line /n, and capitalize first letter
print "name: "
    name = gets.chomp.capitalize
print "word that starts with same letter as name: "
    place = gets.chomp.capitalize
print "adjective: "
    adjective = gets.chomp
print "number: "
    number = gets.chomp
print "animal: "
    animal = gets.chomp
print "adjective: "
    adjective2 = gets.chomp
print "another adjective: "
    adjective3 = gets.chomp
print "noun: "
    noun = gets.chomp
print "verb ending in (ing): "
    verb = gets.chomp
print "noun: "
    noun2 = gets.chomp

# output mad lib with user input
puts "Come to #{name}'s #{place}, where you can buy all sorts of #{adjective} things! You can get #{number} #{adjective2} #{animal}s, or one #{adjective3} #{animal}! You could buy a(n) #{noun} to use while #{verb}. The #{noun2} is the limit!"
