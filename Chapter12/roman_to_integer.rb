puts ""
puts "Roman to integer"
puts ""
roman_numeral = {"I" => 1, "V" => 5, "X" => 10, "L"  => 50, "C" => 100, "D" => 500, "M" => 1000  }
status = 'wrong'

while status != 'right'

  puts 'Type the roman number you want to convert'
  roman_number = gets.chomp.upcase
  roman_array = [ ]
  i = 0

  while i < roman_number.length
    roman_array << roman_number[i]
    i += 1
  end

  i = 0

  while i < (roman_array.length - 3)
    if roman_array[i] == roman_array[i+1] && roman_array[i] == roman_array[i+2] && roman_array[i] == roman_array[i+3]
      status = 'wrong'
      roman_array = [1]
    end
    i+=1
  end

  i = 0
  roman_array.each do |input_letter|

    roman_numeral.each do |roman_letter,number|

     if input_letter.to_s == roman_letter.to_s
       i += 1
     end

    end
  end

  if i == roman_array.length
    status = 'right'
  else
    status = 'wrong'
    puts 'There is something wrong with the roman numerals!'
  end
end

number_array = [ ]

roman_array.each do |letter|
  value = letter
  number = roman_numeral[value]
  number_array << number
end

counter = number_array.length - 1

number = number_array[counter]
counter -= 1


while counter >= 0

  if number_array[counter] < number_array[counter+1]
    number = number - number_array[counter]
  else
    number = number + number_array[counter]
  end

  counter = counter - 1

end
if roman_array == []
  puts "No roman numeral"
else
  puts "The number is: #{number}"
end
