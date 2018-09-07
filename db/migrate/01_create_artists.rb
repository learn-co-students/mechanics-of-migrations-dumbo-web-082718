class CreateArtists < ActiveRecord::Migration
  connection=ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
  )

  # def up
  #   #do
  # end
  #
  # def down
  #   #undo
  # end

  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end
end
