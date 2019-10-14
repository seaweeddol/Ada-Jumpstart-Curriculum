student_name = []
student_ID = []
student_email = []
random_ID = rand(111111..999999).to_s

# get first and last name
5.times do |i|
  print "Enter your first and last name: "
  student_name[i] = gets.chomp.upcase
end

# generate random ID
5.times do |i|
  while student_ID.include?(random_ID) == true
    random_ID = rand(111111..999999).to_s
  end
  student_ID[i] = random_ID
  puts student_ID[i]
end

# generate email address
5.times do |i|
  # if student_name[i].split.size > 2
  #   student_email[i] = student_name[i].split.map(&:first).join + student_name[i].split.last + student_ID[i][3,3] + "@adadevelopersacademy.org"
  # end
  student_email[i] = student_name[i][0] + student_name[i].split.last + student_ID[i][3,3] + "@adadevelopersacademy.org"
  puts student_email[i]
end
