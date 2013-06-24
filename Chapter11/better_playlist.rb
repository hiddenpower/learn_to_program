def better_shuffle array
  x = 0
  song_number = 0
  number_songs = 0
  playlist = [ ]
  song_name = [ ]
  album = ''
  previous_album = ''
  number_songs = array.length

  while x < number_songs
    song_number = rand(number_songs)
    song_name = array[song_number].split'/'
    album = song_name[2]

    if album != previous_album
      if array[song_number] != ''
        playlist << array[song_number]
        array[song_number] = ''
        x += 1
      end

      previous_album = album
    end
  end

  filename = 'Desktop/playlist.m3u'

  File.open filename, 'w' do |f|
    f.puts playlist
  end
end

tracks = Dir['Desktop/music/**/*.{ogg,mp3,m4a}']

better_shuffle tracks