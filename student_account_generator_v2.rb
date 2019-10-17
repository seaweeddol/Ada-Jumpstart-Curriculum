student = []

# get name and ID, and generate email address
5.times do |i|
  student[i] = {}
  print "Enter your first and last name: "
  student[i]["name"] = gets.chomp.upcase
  student[i]["ID"] = rand(111111..999999).to_s
  student[i]["email"] = student[i]["name"][0] + student[i]["name"].split.last + student[i]["ID"][3,3] + "@adadevelopersacademy.org"
end

student.each do |hash|
  puts hash["email"]
end
