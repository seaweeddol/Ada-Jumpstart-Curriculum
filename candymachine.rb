print "Welcome to The (Virtual) Vending Machine!\n
How much money do you have? "
  money = gets.chomp.to_f

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

  if choice == "A"
    cost = 0.5
    selection = "gum"
  elsif choice == "B"
    cost = 0.75
    selection = "chips"
  elsif choice == "C"
    cost = 1.00
    selection = "soda"
  elsif choice == "D"
    cost = 1.50
    selection = "cookie"
  elsif choice == "E"
    cost = 2.00
    selection = "ice cream"
  end

  if !cost
    print "That's not an option, get out of here!"
  elsif money >= cost
      print "You bought #{selection}! You have $#{'%.2f' % (money - cost)} left."
    else
      print "You can't afford that! Get out of here."
  end
end
