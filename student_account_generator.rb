student_name = []
student_ID = []
student_email = []

5.times do |i|
  print "Enter your first and last name: "
  student_name[i] = gets.chomp.upcase
end

5.times do |i|
  student_ID[i] = rand(111111..999999)
end
