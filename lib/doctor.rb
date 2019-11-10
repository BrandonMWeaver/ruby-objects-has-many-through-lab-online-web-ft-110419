class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def appointments
    return Appointment.all.select { |appointment| appointment.doctor == self }
  end
  
  def new_appointment(date, patient)
    return Appointment.new(date, patient, doctor)
  end
  
  def patients
    return appointments.map { |appointment| appointment.patient }
  end
end
