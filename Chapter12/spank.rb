puts ""
puts "1 spank for every birthday"
puts ""

x = 0
leap_years = 0
puts 'What year were you born in?'
year = gets.chomp

while x != 1
  puts 'What month were you born in?'
  month = gets.chomp.downcase

  case month
  when 'january'
    month = 1
    x = 1
  when 'february'
    month = 2
    x = 1
  when 'march'
    month = 3
    x = 1
  when 'april'
    month = 4
    x = 1
  when 'may'
    month = 5
    x = 1
  when 'june'
    month = 6
    x = 1
  when 'july'
    month = 7
    x = 1
  when 'august'
    month = 8
    x = 1
  when 'september'
    month = 9
    x = 1
  when 'october'
    month = 10
    x = 1
  when 'november'
    month = 11
    x = 1
  when 'december'
    month = 12
    x = 1
  when '1'..'12'
    x=1
  else
    puts 'Please type in a month'
    x = 0
  end
end

puts 'What day were you born on?'
day = gets.chomp

start_year = year.to_i
end_year = Time.new.year

while start_year <= end_year
  if start_year.to_f%400 == 0 && start_year.to_f%100 !=0
    leap_years += 1
  elsif start_year.to_f%4 == 0 && start_year.to_f%100 !=0
    leap_years += 1
  end
  start_year+=1
end

right_now = Time.new
birth_day = Time.mktime(year.to_i, month.to_i, (day.to_i))
years_old = (((right_now-birth_day)/(3600*24))-leap_years)/365

puts ''
years_old.to_i.times do
  puts 'spank'
end

puts "" + years_old.floor.to_s + " spanks for you!"