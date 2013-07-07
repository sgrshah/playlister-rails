class Song < ActiveRecord::Base
  attr_accessible :song_name, :artist_id, :genre_id
  belongs_to :artist
  belongs_to :genre
end
