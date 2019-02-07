require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end


new_song = Song.new(name:"song1", artist:"artist1")
# This will go to InteractiveRecord and initialize
# Now have attr accessors for name and artist
Song.table_name
# This gives us "songs" as table name
Song.column_names
# This goes to db, gets all info for each column
# Go through each hash, just get the value corresponding
# to "name" key
# Call compact just to get rid of nil values
# Return in an array
new_song.table_name_for_insert
# This will get the class for new_song and then get table
new_song.col_names_for_insert
# This will get class and then get column names
# and delete if it's the ID column
new_song.values_for_insert
# This will go through column names and push into array
# with the value set to each column unless
# value is nil which means that it's the ID column
new_song.save
# This will INSERT into table_name_for_insert,
# col_names_for_insert in parenthesis
# VALUES as values_for_insert
# Execute this SQL
# Get the ID using the table_name_for_insert
Song.find_by_name(new_song)
# 
