puts ""
puts "Table of Contents Revisited"
puts ""

table = ['Table of Contents', 'Chapter 1: Getting Started', 'page 1','Chapter 2: Numbers','page 9',
       'Chapter 3: Letters','page 13']
line_width = 60
puts (table[0].center(line_width))
puts ''
puts (table[1].ljust(line_width/2) + table[2].rjust(line_width/2))
puts (table[3].ljust(line_width/2) + table[4].rjust(line_width/2))
puts (table[5].ljust(line_width/2) + table[6].rjust(line_width/2))