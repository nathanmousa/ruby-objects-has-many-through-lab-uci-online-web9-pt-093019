class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  
  
  
  private
  def save
    @@all << self
  end
end