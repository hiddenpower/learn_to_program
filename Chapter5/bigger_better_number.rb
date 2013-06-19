puts "Bigger and better number"
puts 'Hey dude! What\'s your favorite number?'
favnum = gets.chomp
betnum = favnum.to_i + 1
puts favnum.to_s + ' is cool and everything but... ' + betnum.to_s + ' is bigger and better! :D'