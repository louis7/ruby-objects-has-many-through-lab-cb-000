class Genre
attr_accessor :name
@@all = []
def initialize(name )
@name = name
@@all << self
end

def self.all
  @@all
end


def new_song(name, genre)
  @song = Song.new(name, self, genre)
end

def songs
  Song.all.select { |song| song.genre == self  }
end

def artists
@@all.select do |song|
  song.artist

end

end




end
