puts ""
puts "Shuffle an Array"
word = "X"
words = []
while word != ""
  puts "Type a word to continue or just press enter to end"
  word = gets.chomp
  words << word
end

def shuffle(array)
  random = []
  pos = 0
  i = 0
  
  array.pop
  while i<array.size
    pos = rand(array.size)
    
    if array[pos] != 'used'
      random << array[pos]
      array[pos] = 'used'
      i+=1
    end

  end

  puts random
end

shuffle words