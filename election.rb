# An electronic election program that tracks votes, total votes, and determines a winner.

candidates = ['Abraham Lincoln', 'Benjamin Franklin', 'Calvin Coolidge']
votes = [0, 0, 0]
total_candidates = candidates.length

puts "It's time to vote! Select one of the candidates below or write one in.

The candidates are:
#{candidates[0]}
#{candidates[1]}
#{candidates[2]}

When everyone is done voting, type 'done'"

total_votes = 0
vote = ""

while vote != "Done"
  print "Vote ##{total_votes + 1}: "
  vote = gets.chomp.split.map(&:capitalize).join(' ')
  puts vote

  if candidates.include?(vote)
    votes[candidates.index(vote)] += 1
  else
    total_candidates += 1
    votes[total_candidates] = 1
    candidates[total_candidates] = vote
  end

  total_votes += 1
end

winner = ""

puts votes

print "\n|||ELECTION RESULTS|||

Vote Summary:"
candidates.each do |n|
  x = 0
  puts "#{n} - #{votes[x]}"
  x += 1
end
