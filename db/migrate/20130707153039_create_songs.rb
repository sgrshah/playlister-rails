
class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.string :song_name
    	t.belongs_to :artist
    	t.belongs_to :genre
      t.timestamps
    end
  end
end
