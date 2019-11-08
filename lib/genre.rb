class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|s| s.genre == self}
  end
  
  def artists 
    songs.map(&:artist)
  end
  
  
  
  private
  def save
    @@all << self
  end
end 