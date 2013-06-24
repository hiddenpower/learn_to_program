
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