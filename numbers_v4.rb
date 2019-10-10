print "How many numbers would you like to work with? "
number_count = gets.chomp.to_i
numbers = [0]

number_count.times do |i|
  print "Enter a positive integer: "
  numbers.push(gets.chomp.to_i)
  if numbers[i + 1] < numbers[i]
    puts "The value at index #{i}, #{numbers[i + 1]}, is less than the value at the last index, #{numbers[i]}."
  elsif numbers[i + 1] > numbers[i]
    puts "The value at index #{i}, #{numbers[i + 1]}, is greater than the value at the last index, #{numbers[i]}."
  elsif numbers[i + 1] == numbers[i]
    puts "The value at index #{i}, #{numbers[i + 1]}, is equal to the value at the last index, #{numbers[i]}."
  end
end

numbers.shift
