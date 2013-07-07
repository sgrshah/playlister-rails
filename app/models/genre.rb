class Genre < ActiveRecord::Base
  attr_accessible :genre_name
  has_many :songs
  has_many :artists, through: :songs
end
