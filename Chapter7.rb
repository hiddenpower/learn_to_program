puts "99 Bottles of Beer on the Wall"
bottles = 99

while bottles > 0
  puts bottles.to_s + ' bottles of beer on the wall!'
  puts bottles.to_s + ' bottles of beer'
  bottles -= 1
  puts 'Take one down, pass it around!'

  if bottles == 1
    puts bottles.to_s + ' bottle of beer on the wall!'
  else
    puts bottles.to_s + ' bottles of beer on the wall!'
  end

  puts ''

  if bottles == 1
    puts bottles.to_s + ' bottle of beer on the wall!'
    puts bottles.to_s + ' bottle of beer'
    bottles = bottles - 1
    puts 'take one down, pass it around!'
    puts bottles.to_s + ' bottles of beer on the wall!'
  end
end

puts ""
puts "Deaf Grandma"
sonny1 = ''
sonny2 = ''
sonny3 = ''

while sonny1 != 'BYE' || sonny2 != 'BYE' || sonny3 != 'BYE'

  while sonny1 != 'BYE'
    sonny1 = gets.chomp

    if sonny1 == sonny1.upcase
      year = rand(20) + 1930
      puts 'NO, NOT SINCE ' + year.to_s
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end

    if sonny1 != 'BYE'
      sonny2 = ''
      sonny3 = ''
    end
  end

  while sonny2 != 'BYE'

    sonny2 = gets.chomp

    if sonny2 == sonny2.upcase
      year = rand(20) + 1930
      puts 'NO, NOT SINCE ' + year.to_s
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end

    if sonny2 != 'BYE'
      sonny1 = ''
      sonny3 = ''
    end

  end

  while sonny3 != 'BYE'

    sonny3 = gets.chomp

    if sonny3 == sonny3.upcase
      year = rand(20) + 1930
      puts 'NO, NOT SINCE ' + year.to_s
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end

    if sonny3 != 'BYE'
      sonny1 = ''
      sonny2 = ''
    end
  end
end

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
