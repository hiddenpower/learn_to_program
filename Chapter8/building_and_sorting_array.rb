puts ""
puts "Building and Sorting an Array"
word = "X"
array = []
i = 0
while word != ""
  puts "Type a word to continue o just press enter to end"
  word = gets.chomp
  array[i] = word
  i += 1
end

puts array.sort