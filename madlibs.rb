# introduction to program
puts "Welcome to MadLibs! Please enter the information below."

madlibs = {
  name: {
    prompt: "name: ",
  },
  place: {
    prompt: "word that starts with same letter as name: "
  },
  adjective: {
    prompt: "adjective: ",
  },
  number: {
    prompt: "number: ",
  },
  adjective2: {
    prompt: "adjective: ",
  },
  animal: {
    prompt: "animal: ",
  },
  adjective3: {
    prompt: "another adjective: ",
  },
  noun: {
    prompt: "noun: ",
  },
  verb: {
    prompt: "verb ending in (ing): ",
  },
  noun2: {
    prompt: "noun: ",
  }
}

words = []

# ask for user input, then save user input to variable, remove new line /n, and capitalize first letter
madlibs.values.each do |intake|
  print "#{intake[:prompt]}"
  intake[:word] = gets.chomp
  words.push(intake[:word])
end

# output mad lib with user input
puts "Come to #{words[0]}'s #{words[1]}, where you can buy all sorts of #{words[2]} things! You can get #{words[3]} #{words[4]} #{words[5]}s, or one #{words[6]} #{words[5]}! You could buy a(n) #{words[7]} to use while #{words[8]}. The #{words[9]} is the limit!"
