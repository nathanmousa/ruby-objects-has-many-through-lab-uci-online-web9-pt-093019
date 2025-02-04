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
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select { |app| app.doctor == self }
  end
  
  def patients
    appointments.collect { |app| app.patient }.uniq
  end
  
  
  
  private
  def save
    @@all << self
  end
end