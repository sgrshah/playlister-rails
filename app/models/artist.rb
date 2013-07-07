class Artist < ActiveRecord::Base
  attr_accessible :artist_name
  has_many :songs
  has_many :genres, through: :songs
end
