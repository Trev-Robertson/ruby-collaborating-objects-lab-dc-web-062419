

class Song

    attr_accessor :name, :artist

   

    def initialize(name)
        @name = name
        # binding.pry
    end

    def self.new_by_filename(new_file)
    #   if (self.artist.nil?)
    #   self.artist = Artist.new(name)
    # else
    #   self.artist.name = name
         
         writer, song_name = new_file.split(" - ")
         
          new_song = self.new(song_name)
          # binding.pry
          if new_song.artist.nil?
            new_song.artist = Artist.new(writer)
            Artist.add_song(new_song)
          else 
            new_song.artist_name = writer
          end
            
    end

     def artist_name=(name)
        # binding.pry
       Artist.find_or_create_by_name(name)
    #    binding.pry
     end


end