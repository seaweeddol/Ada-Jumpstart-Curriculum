# Program that takes user input and then 'plucks' petals from a flower and alternates They love me/Love me not

print "Enter the number of petals on this flower: "
petals = gets.chomp.to_i
loves = ""

petals.times do |i|
  if i % 2 == 0
    loves = "They love me!"
  else
    loves = "They love me not!"
  end
  puts "Plucking petal ##{i + 1}: #{loves}"
end
