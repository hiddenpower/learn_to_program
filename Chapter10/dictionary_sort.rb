puts ""
puts "Dictionary Sort an Array"
word = "X"
words = []
while word != ""
  puts "Type a word to continue or just press enter to end"
  word = gets.chomp
  words << word
end

def dictionary_sort(array)
  done = true

  while done
    done = false
    0.upto(array.size-2) do |i|
      if array[i].downcase > array[i+1].downcase
        array[i], array[i+1] = array[i+1], array[i]
        done = true
      end
    end
  end

  puts array
end

dictionary_sort words