hash = {
  random_numbers: [],
  user_input: []
}

5.times do |i|
  hash[:random_numbers].push(rand(12..21))
end

5.times do |i|
  print "Enter a number between 12 and 21: "
  hash[:user_input].push(gets.chomp.to_i)
end

hash2 = {}

hash.values.each do |num|
  num.each do |i|
    if hash2.key?(i)
      hash2[i] += 1
    else
      hash2[i] = 0
    end
  end
end

puts hash2
