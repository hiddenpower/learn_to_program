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