$depth = 0
$space = ' '

def log description, &block
  puts $space*$depth + 'Beginning "'+description+'" ...'
  $depth += 1
  value_returned = block.call
  $depth = $depth - 1
  puts $space*$depth + '... "'+description+'" finished, returning:'
  puts $space*$depth + value_returned.to_s
end

log 'outer block' do

  log 'some little block' do

    log 'teeny-tiny block' do
      'lots of love'
    end

    42
  end

  log 'yet another block' do
    'I love Indian food!'
  end

  true
end