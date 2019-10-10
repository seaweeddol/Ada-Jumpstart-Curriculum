password_valid = false
password_error = []

# loop until password is valid
until password_valid
  print "Enter a new password: "
  password = gets.chomp
  if password.length >= 8 && password =~ /\d/ && password =~ /@|%|\*|!/
    print "Please enter your password again to confirm: "
    password_verify = gets.chomp
    until password_verify == password
      print "Your password did not match. Please enter it again: "
      password_verify = gets.chomp
    end
    puts "Your password has been accepted."
    password_valid = true
  # check if password is at least 8 characters long
  else
    if password.length < 8
      password_error.push("be at least 8 characters long")
    # check if password includes a number
    elsif password !=~ /\d/
      password_error.push("contain a number")
    # check if password includes a special character
    elsif password !=~ /@|%|\*|!/
      password_error.push("contain a special character (@, %, *, or !)")
    end
    print password_error
    password_error = []
  end
end
