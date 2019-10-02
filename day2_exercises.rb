# Prompt for a number. If the number is greater than 70, print PASSING; otherwise, print NOT PASSING.

puts "Enter a number."
num = gets.chomp.to_i
if num > 70
  print "PASSING"
else
  print "NOT PASSING"
end

# Prompt for a string. If the string is equal to green, print GO, otherwise, print STOP.
puts "\nChoose a color."
color = gets.chomp.downcase
if color == "green"
  print "GO"
else
  print "STOP"
end

#Prompt for a number. If the number is even, print EVEN, otherwise, print ODD.
puts "\nEnter a number."
num = gets.chomp.to_i
if num % 2 == 0
  print "EVEN"
else
  print "ODD"
end

#Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE OF 5, otherwise, print NOT A MULTIPLE OF 5.
puts "\nEnter a number."
num = gets.chomp.to_i
if num % 5 == 0
  print "MULTIPLE OF 5"
else
  print "NOT A MULTIPLE OF 5"
end

#Prompt for a number. If the number is less than 10, print ONE DIGIT. If the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS.
puts "\nEnter a number."
num = gets.chomp.to_i
if num < 10
  print "ONE DIGIT"
elsif num < 100
  print "TWO DIGITS"
else
  print "THREE DIGITS"
end

#Prompt for a jersey number. If that number is 12, 71, or 80, print That number is retired from the Seattle Seahawks!, otherwise do nothing.
puts "\nEnter a jersey number."
num = gets.chomp.to_i
print "That number is retired from the Seattle Seahawks!\n" if num == 12 || num == 71 || num == 80

#Prompt for a state. If the state is Washington, Oregon, or Idaho, print This state is in the PNW, otherwise print You should move to the PNW; it’s great here!
puts "Enter a state."
state = gets.chomp.capitalize
if state == "Washington" || state == "Oregon" || state == "Idaho"
  print "This state is in the PNW"
else
  print "You should move to the PNW; it’s great here!"
end

#Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. Print out the number of ounces that drink includes (8, 12, 16, 20 respectively).
puts "\nWhat size drink would you like?
SHORT
TALL
GRANDE
VENTI"
drink_size = gets.chomp.upcase
case drink_size
when "SHORT"
  print "Your drink is 8 oz!"
when "TALL"
  print "Your drink is 12 oz!"
when "GRANDE"
  print "Your drink is 16 oz!"
when "VENTI"
  print "Your drink is 20 oz!"
end

#Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours worked beyond 40 (e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $475 (40 x 10 + 5 x 15).
puts "\nWhat is your rate of pay?"
pay_rate = gets.chomp.to_f
puts "How many hours did you work this week?"
hours_worked = gets.chomp.to_i
if hours_worked > 40
  total_pay = (pay_rate * 40) + ((pay_rate * 1.5) * (hours_worked - 40))
else
  total_pay = pay_rate * hours_worked
end
print "Your gross pay this week was $#{'%.2f' % total_pay}"

#Rewrite the solution to the previous problem adding this modification: do not process any employee if their hours worked is greater than 60, instead display the message Please see manager.
puts "\nWhat is your rate of pay?"
pay_rate = gets.chomp.to_f
puts "How many hours did you work this week?"
hours_worked = gets.chomp.to_i
if hours_worked > 60
  print "Please see manager."
elsif hours_worked > 40
  total_pay = (pay_rate * 40) + ((pay_rate * 1.5) * (hours_worked - 40))
  print "Your gross pay this week was $#{'%.2f' % total_pay}"
else
  total_pay = pay_rate * hours_worked
  print "Your gross pay this week was $#{'%.2f' % total_pay}"
end
