puts "Full Name Greeting!"
puts 'Hey dude! What\'s your first name?'
nameF = gets.chomp
puts 'And your middle name?'
nameM = gets.chomp
puts 'And... your last name?'
nameL = gets.chomp
puts ''
puts 'Nice meeting you ' + nameF + ' ' + nameM + ' ' + nameL + '! :D'

puts "Bigger and better number"
puts 'Hey dude! What\'s your favorite number?'
favnum = gets.chomp
betnum = favnum.to_i + 1
puts favnum.to_s + ' is cool and everything but... ' + betnum.to_s + ' is bigger and better! :D'