puts "Angry Boss"
puts 'You again!? What do you want this time!?'
want = gets.chomp
puts 'WHADDYA MEAN "I WANT ' + want.upcase + '"?!? YOU\'RE FIRED!!!'

puts "Table of contents"
puts ""
line_width = 70
puts ('Table of Contents'.center(line_width))
puts ('Chapter 1: Getting Started'.ljust(line_width/2) + 'line 1'.rjust(line_width/2))
puts ('Chapter 2: Numbers'.ljust(line_width/2) + 'line 9'.rjust(line_width/2))
puts ('Chapter 3: Letters'.ljust(line_width/2) + 'line 13'.rjust(line_width/2))