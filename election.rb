# An electronic election program that tracks votes, total votes, and determines a winner.

puts "It's time to vote! Use the letter in parentheses () to vote for your favorite candidate.

The candidates are:
(A)braham Lincoln
(B)enjamin Franklin
(C)alvin Coolidge"

total_votes = 1
total_A = 0
total_B = 0
total_C = 0

while total_votes <= 10
  print "Vote ##{total_votes}: "
  vote = gets.chomp.upcase


  if vote != "A" && vote != "B" && vote != "C"
    puts "That's not a valid option! Try again."
    # if not one of the provided choices,
    # candidate_count = 3
    # candidate_count += 1
    # candidate_#{candidate_count} = vote
    # total_#{candidate_count} += 1
    # but then how do I add to existing write in candidate? need to rewrite if then to programmatically assign value to a variable and then add to the appropriate candidate
  else
    if vote == "A"
      total_A += 1
    elsif vote == "B"
      total_B += 1
    else
      total_C += 1
    end
    total_votes += 1
  end
end

winner = ""

if total_A > total_B && total_A > total_C
  winner = "Abraham Lincoln"
elsif total_B > total_A && total_B > total_C
  winner = "Benjamin Franklin"
elsif total_C > total_A && total_C > total_B
  winner = "Calvin Coolidge"
else
  winner = "It was a tie!"
end

print "\n|||ELECTION RESULTS|||

Vote Summary:
Abraham Lincon - #{total_A} vote(s)
Benjamin Franklin - #{total_B} vote(s)
Calvin Coolidge - #{total_C} vote(s)

WINNER: #{winner}"
