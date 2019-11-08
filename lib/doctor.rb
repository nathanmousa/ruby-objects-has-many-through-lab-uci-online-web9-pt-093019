class Doctor
  attr_accessor
  @@all = []
  
  def initialize
    
  end
  
  
  private
  def save
    @@all << self
  end
end