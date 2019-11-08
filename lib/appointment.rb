class Appointment 
  attr_accessor :date, :doctor, :patient
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    save
  end
  
  def self.all
    @@all
  end
  
  
  private
  def save
    @@all << self
  end
end 