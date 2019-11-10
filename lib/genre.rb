class Genre
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def songs
    return Song.all.select { |song| song.genre == self }
  end
  
  def self.all
    return @@all
  end
end
