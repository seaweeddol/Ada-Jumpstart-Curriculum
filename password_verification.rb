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
  else
    # check if password is at least 8 characters long
    if password.length < 8
      password_error.push("be at least 8 characters long")
    end
    # check if password includes a number
    if password !~ /\d/
      password_error.push("contain a number")
    end
    # check if password includes a special character
    if password !~ /@|%|\*|!/
      password_error.push("contain a special character (@, %, *, or !)")
    end
    puts password_error
    password_error = []
  end
end
