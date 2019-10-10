password_valid = false
password_error = []

# loop until password is valid
until password_valid
  print "Enter a new password: "
  password = gets.chomp
  # check if password is valid
  if password.length >= 8 && password =~ /\d/ && password =~ /@|%|\*|!/ && password =~ /[a-z]/ && password =~ /[A-Z]/
    print "Enter again to confirm: "
    password_verify = gets.chomp
    # make user enter exact match again to confirm
    until password_verify == password
      print "Your password did not match. Please enter it again: "
      password_verify = gets.chomp
    end
    puts "Your password has been accepted."
    password_valid = true
  else
    #check if password is long enough
    if password.length < 8
      password_error.push("be at least 8 characters long")
    end
    # check if password contains number, special character, lowercase letter, and uppercase letter
    password_check = {
      /\d/ => 'contain a number',
      /@|%|\*|!/ => 'contain a special character (@, %, *, or !)',
      /[a-z]/ => 'contain a lowercase letter',
      /[A-Z]/ => 'contain an uppercase letter'
    }
    # if password does not contain an item, push string to password_error array
    password_check.each { |check, string| password_error.push(string) if password !~ check }
    puts "Password must #{password_error * ", "}"
    password_error = []
  end
end
