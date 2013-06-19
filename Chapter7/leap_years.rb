puts ""
puts "Leap Years"

puts "Please type a starting year"
startyear = gets.chomp
puts "Please type an ending year"
endyear = gets.chomp

startyear = startyear.to_i
endyear = endyear.to_i
while startyear <= endyear
  if startyear.to_f%400 == 0 && startyear.to_f%100 !=0
    puts startyear
  elsif startyear.to_f%4 == 0 && startyear.to_f%100 !=0
    puts startyear
  end
  startyear+=1
end
