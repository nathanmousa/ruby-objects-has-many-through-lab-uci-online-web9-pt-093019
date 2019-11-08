class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def genres
    songs.collect { |song| song.genre }.uniq
  end
    
  
  
  private
  def save
    @@all << self
  end
end