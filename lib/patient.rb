class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select { |app| app.patient == self}
  end
  
  def doctors
    appointments.collect { |app| app.doctor }.uniq
  end
  
  
  
  private
  def save
    @@all << self
  end
end