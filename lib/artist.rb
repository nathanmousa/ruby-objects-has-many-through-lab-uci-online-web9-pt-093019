class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    self.all
  end
  
  def new_song(name, genre)
    
  end
  
  def songs
    song = Song.new(name, self, genre)
  end
  
  private
  def save
    @@all << self
  end
end