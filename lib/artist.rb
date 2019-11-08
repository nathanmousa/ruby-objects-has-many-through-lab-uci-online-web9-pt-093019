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
  
  def new_song()
    
  end
  
  
  private
  def save
    @@all << self
  end
end