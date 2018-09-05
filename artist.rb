class Artist < ActiveRecord::Base

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL

def change
  create_table :artists do |t|
    t.string :name
    t.string :genre
    t.integer :age
    t.string :hometown
  end
end

# ActiveRecord::Base.connection.execute(sql)

end
