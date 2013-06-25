def log description, &block
  puts 'Beginning "'+description+'" . . .'
  value_returned = block.call
  puts '. . . "'+description+'" finished, returning:'
  puts value_returned
end

log 'outer block' do

  log 'some little block' do
    5
  end

  log 'yet another block' do
    'I like Thai food!'
  end

  false
end