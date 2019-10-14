student_name = []
student_ID = []
student_email = []

5.times do |i|
  print "Enter your first and last name: "
  student_name[i] = gets.chomp.upcase
end

5.times do |i|
  student_ID[i] = rand(111111..999999).to_s
  puts student_ID[i]
end

5.times do |i|
  student_email[i] = student_name[i][0] + student_name[i].split.last + student_ID[i][3,3] + "@adadevelopersacademy.org"
  puts student_email[i]
end
