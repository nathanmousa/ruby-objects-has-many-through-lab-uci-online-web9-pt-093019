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
    Song.all.select { |song| song.genre == self}
  end
  
  def artists 
    songs.collect { |song| song.genre }.uniq
  end
  
  
  
  private
  def save
    @@all << self
  end
end 