password_valid = false

# loop until password is valid
until password_valid
  print "Enter a new password: "
  password = gets.chomp
  # check if password is at least 8 characters long
  if password.length >= 8
    # check if password includes a number
    if password =~ /\d/
      # check if password includes a special character
      if password =~ /@|%|\*|!/
        puts "good job!"
        password_valid = true
      else
        puts "Password must contain a special character (@, %, *, or !)"
      end
    else
      puts "Password must contain a number."
    end
  else
    puts "Password must be at least 8 characters."
  end
end
