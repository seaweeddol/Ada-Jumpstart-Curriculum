# candy machine program that shows user options and allows them to 'buy' something if they have enough money
print "Welcome to The (Virtual) Vending Machine!\n
How much money do you have? "
  money = gets.chomp.to_f

# check if user has enough money, and display options if so
if money < 0.5
  print "You can't afford anything here! Go somewhere else."
else
  print "$#{'%.2f' % money}? Here's what you can buy:
    A. $0.50 gum
    B. $0.75 chips
    C. $1.00 soda
    D. $1.50 cookie
    E. $2.00 ice cream

Enter the letter of the item you want > "

  choice = gets.chomp.upcase

# assign cost and selection value to variables
  case choice
  when "A"
    cost = 0.5
    selection = "gum"
  when "B"
    cost = 0.75
    selection = "chips"
  when "C"
    cost = 1.00
    selection = "soda"
  when "D"
    cost = 1.50
    selection = "cookie"
  when "E"
    cost = 2.00
    selection = "ice cream"
  end

# check if user choice is valid
  if !cost
    print "That's not an option, get out of here!"
# check if user can afford selection. if so show how much money they have left over
  elsif money >= cost
      print "You bought #{selection}! You have $#{'%.2f' % (money - cost)} left."
    else
      print "You can't afford that! Get out of here."
  end
end
