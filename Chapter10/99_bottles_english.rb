puts ""
puts "Expanded 99 bottles of beer"
puts ""

def english_number number
  if number < 0
    return 'The program does not support negative numbers'
  end

  if number == 0
    return 'zero'
  end

  number_name = ''

  units = [ 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teens = [ 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  tens = [ 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  rest = number

  # trillions
  write = rest/1000000000000
  rest = rest - write*1000000000000

  if write > 0
    trillions = english_number write
    number_name = number_name + trillions + ' trillion'

    if rest > 0
      number_name = number_name + ' '
    end
  end

  # billions
  write = rest/1000000000
  rest = rest - write*1000000000

  if write > 0
    billions = english_number write
    number_name = number_name + billions + ' billion'

    if rest > 0
      number_name = number_name + ' '
    end
  end

  # millions
  write = rest/1000000
  rest = rest - write*1000000

  if write > 0
    millions = english_number write
    number_name = number_name + millions + ' million'

    if rest > 0
      number_name = number_name + ' '
    end
  end

  # thousands
  write = rest/1000
  rest = rest - write*1000

  if write > 0
    thousands = english_number write
    number_name = number_name + thousands + ' thousand'

    if rest > 0
      number_name = number_name + ' '
    end
  end

  # hundreds
  write = rest/100
  rest = rest - write*100

  if write > 0
    hundreds = english_number write
    number_name = number_name + hundreds + ' hundred'

    if rest > 0
      number_name = number_name + ' '
    end
  end

  # designated names
  write = rest/10
  rest = rest - write*10

  if write > 0
    if ((write == 1) and (rest > 0))
      number_name = number_name + teens[rest-1]
      rest = 0
    else
      number_name = number_name + tens[write-1]
    end

    if rest > 0
      number_name = number_name + '-'
    end
  end

  write = rest
  rest = 0

  if write > 0
    number_name = number_name + units[write-1]
  end

  number_name
end

bottles = 999

while bottles > 0
  puts english_number(bottles).to_s + ' bottles of beer on the wall!'
  puts english_number(bottles).to_s + ' bottles of beer'
  bottles -= 1
  puts 'Take one down, pass it around!'

  if bottles == 1
    puts english_number(bottles).to_s + ' bottle of beer on the wall!'
  else
    puts english_number(bottles).to_s + ' bottles of beer on the wall!'
  end

  puts ''

  if bottles == 1
    puts english_number(bottles).to_s + ' bottle of beer on the wall!'
    puts english_number(bottles).to_s + ' bottle of beer'
    bottles = bottles - 1
    puts 'take one down, pass it around!'
    puts english_number(bottles).to_s + ' bottles of beer on the wall!'
  end
end