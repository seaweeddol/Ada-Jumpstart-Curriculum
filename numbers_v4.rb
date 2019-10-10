print "How many numbers would you like to work with? "
number_count = gets.chomp.to_i
numbers = [0]

# determine if current value is greater, less, or equal to previous value
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
min = numbers[0]
total = 0

# loop to find lowest value in the numbers array
numbers.each do |num|
  if num < min
    min = num
  end
end

# loop to find average of numbers array
numbers.each do |num|
  total += num
end

avg = (total.to_f / numbers.length).to_f

print "The minimum value in the array is #{min}
The maximum value in the array is #{numbers.max}
The average of the array is #{avg}"
