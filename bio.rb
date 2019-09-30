require 'date'

puts "Please provide the following information."

print "Name: "
  name = gets.chomp.capitalize
print "Birthday (MM/DD/YYYY): "
  birthday = gets.chomp.capitalize
  birth_month = Date::MONTHNAMES[birthday.slice(0, 2).to_i]
  birth_date = birthday.slice(3, 5).to_i
  birth_year = birthday.slice(6, 9).to_i
print "Occupation: "
  occupation = gets.chomp

puts "\n#{name} is a(n) #{occupation} who is #{Date.today.year - birth_year} years old.
Their birthday is on #{birth_month} #{birth_date}."
