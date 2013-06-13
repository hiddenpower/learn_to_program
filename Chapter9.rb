puts ""
puts "Improved Ask Method"
puts ""

def ask(question)

  puts question
  reply = gets.chomp.downcase

  while reply != 'yes' && reply != 'no'
    puts 'Please answer "yes" or "no".'
    puts question
    reply = gets.chomp.downcase
  end

  if reply == 'yes'
    return true
  else
    return false
  end

end

puts 'Hello, and thank you for ...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING'
puts 'Thank you for ...'
puts
puts wets_bed

puts ""
puts "Old-school Roman numerals"
puts ""
def roman(number)
  i_repeat = 0
  v_repeat = 0
  x_repeat = 0
  l_repeat = 0
  c_repeat = 0
  d_repeat = 0
  m_repeat = 0

  if number >= 1000
    m_repeat =number/1000
    number = number%1000
  end

  if number >= 500
    d_repeat =number/500
    number = number%500
  end

  if number >= 100
    c_repeat =number/100
    number = number%100
  end

  if number >= 50
    l_repeat =number/50
    number = number%50
  end

  if number >= 10
    x_repeat =number/10
    number = number%10
  end

  if number >= 5
    v_repeat =number/5
    number = number%5
  end

  if number >= 1
    i_repeat =number/1
    number = number%1
  end

  puts "M"*m_repeat + "D"*d_repeat + "C"*c_repeat + "L"*l_repeat + "X"*x_repeat + "V"*v_repeat + "I"*i_repeat
end
roman(2987)

puts ""
puts "Modern Roman numerals"
puts ""
def roman(number)
  i_repeat = 0
  iv_ = 0
  v_repeat = 0
  ix_ = 0
  x_repeat = 0
  xl_ = 0
  l_repeat = 0
  xc_ = 0
  c_repeat = 0
  cd_ = 0
  d_repeat = 0
  cm_ = 0
  m_repeat = 0

  if number >= 1000
    m_repeat =number/1000
    number = number%1000
  end

  if number >= 900
    cm_ =number/900
    number = number%900
  end

  if number >= 500
    d_repeat =number/500
    number = number%500
  end

  if number >= 400
    cd_ =number/400
    number = number%400
  end

  if number >= 100
    c_repeat =number/100
    number = number%100
  end

  if number >= 90
    xc_ =number/90
    number = number%90
  end

  if number >= 50
    l_repeat =number/50
    number = number%50
  end

  if number >= 40
    xl_ =number/40
    number = number%40
  end

  if number >= 10
    x_repeat =number/10
    number = number%10
  end

  if number >= 9
    ix_ =number/9
    number = number%9
  end

  if number >= 5
    v_repeat =number/5
    number = number%5
  end

  if number >= 4
    iv_ =number/4
    number = number%4
  end

  if number >= 1
    i_repeat =number/1
    number = number%1
  end

  puts "M"*m_repeat + "CM"*cm_ + "D"*d_repeat + "CD"*cd_ + "C"*c_repeat + "XC"*xc_ + "L"*l_repeat + "XL"*xl_ + "X"*x_repeat + "IX"*ix_ + "V"*v_repeat + "IV"*iv_ + "I"*i_repeat
end
roman(2987)