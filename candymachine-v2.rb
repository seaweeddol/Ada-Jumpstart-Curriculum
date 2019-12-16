# candy machine program that shows user options and allows them to 'buy' something if they have enough money
print "Welcome to The (Virtual) Vending Machine!\n
How much money do you have? "
  $money = gets.chomp.to_f
  puts "$#{'%.2f' % $money}? Here's what you can buy:"

$menu = {
  A: {
    cost: 0.5,
    selection: "gum"
  },
  B: {
    cost: 0.75,
    selection: "chips"
  },
  C: {
    cost: 1.00,
    selection: "soda"
  },
  D: {
    cost: 1.50,
    selection: "cookie"
  },
  E: {
    cost: 2.00,
    selection: "ice cream"
  }
}

# print menu by looping through menu hash
def display_menu()
  print "\n"
  $menu.keys.each do |i|
    puts "  #{i}. $#{'%.2f' % $menu[:"#{i}"][:cost]} #{$menu[:"#{i}"][:selection]}"
  end

  puts "\nEnter the letter of the item you want: "
end


# check if user has enough money
if $money < 0.5
  print "You can't afford anything here! Go somewhere else."
else
  # while user has more than the cheapest option, accept user input
  while $money >= 0.5
    display_menu()
    $choice = gets.chomp.upcase
    choice_valid = false
    # ask for user input until choice is a valid option
    until choice_valid == true
      if !$menu.key?(:"#{$choice}")
        print "That's not an option, choose again: "
        $choice = gets.chomp.upcase
      else
        if $money < $menu[:"#{$choice}"][:cost]
          print "You can't afford that! Choose again: "
          $choice = gets.chomp.upcase
        else
          choice_valid = true
          # update money amount
          $money -= $menu[:"#{$choice}"][:cost]
          puts "You bought #{$menu[:"#{$choice}"][:selection]}! You have $#{'%.2f' % $money} left."
        end
      end
    end
  end
end

puts "\nYou can't afford anything else.
Thanks for shopping at The (Virtual) Vending Machine!"
