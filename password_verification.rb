 password_valid = false

until password_valid
  print "Enter a new password: "
  password = gets.chomp
  if password =~ /\d/
    if password =~ /@|%|\*|!/
      puts "good job!"
      password_valid = true
    end
  else
    puts "no"
  end
end
