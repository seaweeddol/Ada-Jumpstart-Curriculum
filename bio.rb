require 'date'

puts "Please provide the following information."

puts "Name: "
  name = gets.chomp.capitalize
puts "Birthday (MM/DD/YYYY): "
  birthday = gets.chomp.capitalize
  birth_month = Date::MONTHNAMES[birthday.slice(0, 2).to_i]
  birth_date = birthday.slice(3, 5).to_i
  birth_year = birthday.slice(6, 9).to_i
puts "Occupation: "
  occupation = gets.chomp

puts "#{name} is a(n) #{occupation} who is #{Date.today.year - birth_year} years old.\n
Their birthday is on #{birth_month} #{birth_date}."
