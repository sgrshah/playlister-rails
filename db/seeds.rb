# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

files = Dir.entries("db/data").delete_if{|str| str[0] == "."}
  files.each do |song_file|
    puts "parsing #{song_file}"
    artist = song_file.split(" - ")[0].split("/").first.strip
    song = song_file.split(" - ")[1].split("[").first.strip
    genre = song_file.split(" - ")[1].split("[").last.split("]").first.strip

    new_artist = Artist.find_by_artist_name(artist) || Artist.new
    new_artist.artist_name = artist
    new_artist.save

    new_genre = Genre.find_by_genre_name(genre) || Genre.new
    new_genre.genre_name = genre
    new_genre.save

    new_song = Song.new
    new_song.song_name = song
    new_song.artist_id = new_artist.id #ADDED
    new_song.genre_id = new_genre.id #ADDED
    new_song.save

    # new_artist.add_song(new_song)
    # new_song.genre = new_genre
    # new_genre.artists << new_artist

  end