walkers = []
total = 0

print "Enter the earning goal for the walk-a-thon: $"
earning_goal = gets.chomp.to_f

print "Enter the amount earned per lap (per person): "
lap_amount = gets.chomp.to_f

puts "Please enter the number of laps completed by each person."

5.times do |i|
  walkers[i] = {}
  print "Walker ##{i + 1}: "
  walkers[i]["laps_walked"] = gets.chomp.to_i
  walkers[i]["amount_earned"] = walkers[i]["laps_walked"] * lap_amount
  puts "     Earned $#{walkers[i]["amount_earned"]}"
end

walkers.each do |hash|
  total += hash["amount_earned"]
end

if total < earning_goal
  goal_met = "The goal was missed by #{earning_goal - total}"
else
  goal_met = "The goal was achieved and beaten by #{earning_goal - total}"
end

puts "Highest earning walker: ##{}
Total amount earned: $#{total}
Goal met? #{goal_met}"
