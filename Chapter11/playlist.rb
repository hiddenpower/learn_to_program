def shuffle array
  x = 0
  song_number = 0
  playlist = [ ]
  number_songs = array.length

  while x < number_songs
    song_number = rand(number_songs)

    if array[song_number] != ''
      playlist << array[song_number]
      array[song_number] = ''
      x += 1
    end
  end

  filename = 'Desktop/playlist.m3u'

  File.open filename, 'w' do |f|
    f.puts playlist
  end
end

tracks = Dir['Desktop/music/**/*.{ogg,mp3,m4a}']

shuffle(tracks)