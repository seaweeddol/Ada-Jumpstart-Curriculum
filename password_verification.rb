password_valid = false
password_error = []

# loop until password is valid
until password_valid
  print "Enter a new password: "
  password = gets.chomp
  if password.length >= 8 && password =~ /\d/ && password =~ /@|%|\*|!/ && password =~ /[a-z]/ && password =~ /[A-Z]/
    print "Enter again to confirm: "
    password_verify = gets.chomp
    until password_verify == password
      print "Your password did not match. Please enter it again: "
      password_verify = gets.chomp
    end
    puts "Your password has been accepted."
    password_valid = true
  else
    if password.length < 8
      password_error.push("be at least 8 characters long")
    end
    password_check = {
      /\d/ => 'contain a number',
      /@|%|\*|!/ => 'contain a special character (@, %, *, or !)',
      /[a-z]/ => 'contain a lowercase letter',
      /[A-Z]/ => 'contain an uppercase letter'
    }
    password_check.each { |check, string| password_error.push(string) if password !~ check }
    puts "Password must #{password_error * ", "}"
    password_error = []
  end
end
