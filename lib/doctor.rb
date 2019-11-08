class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
  
  private
  def save
    @@all << self
  end
end