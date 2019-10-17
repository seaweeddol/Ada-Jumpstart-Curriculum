walkers = []

print "Enter the earning goal for the walk-a-thon: $"
earning_goal = gets.chomp.to_f

print "Enter the amount earned per lap (per person): "
lap_amount = gets.chomp.to_f

puts "Please enter the number of laps completed by each person."

5.times do |i|
  walkers[i] = {}
  print "Walker ##{i + 1}: "
  walkers[i]["laps_walked"] = gets.chomp.to_i
  puts "     Earned $#{walkers[i]["laps_walked"] * lap_amount}"
end
