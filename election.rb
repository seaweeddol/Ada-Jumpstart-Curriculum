# An electronic election program that tracks votes, total votes, and determines a winner.

candidates = ['Abraham Lincoln', 'Benjamin Franklin', 'Calvin Coolidge']
votes = [0, 0, 0]
total_candidates = candidates.length - 1
total_votes = 0
vote = ""

print "It's time to vote! Select one of the candidates below or write one in.

The candidates are:\n"

# print each candidate in the array on a separate line
candidates.each do |candidate|
  puts candidate
end

puts "\nWhen everyone is done voting, type 'done'"

# check if candidate is existing or new write in and update votes accordingly
while vote != "Done"
  print "Vote ##{total_votes + 1}: "
  vote = gets.chomp.split.map(&:capitalize).join(' ')

  if candidates.include?(vote)
    votes[candidates.index(vote)] += 1
  # if candidate is new, add to array and update votes and total_candidates count
  else
    total_candidates += 1
    votes[total_candidates] = 1
    candidates[total_candidates] = vote
  end

  total_votes += 1
end

# remove final candidate (done)
candidates.pop

print "\n|||ELECTION RESULTS|||

Vote Summary:
"

# print out candidate and number of votes on new line
x = 0
candidates.each do |n|
  if votes[x] = 1
    puts "#{n} - #{votes[x]} votes"
  else
    puts "#{n} - #{votes[x]} vote"
  end
  x += 1
end

puts "Winner: #{candidates[votes.index(votes.max)]}"
