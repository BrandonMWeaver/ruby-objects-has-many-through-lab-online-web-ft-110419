class Patient
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
    return Appointment.all.select { |appointment| appointment.patient == self }
  end
  
  def new_appointment(date, doctor)
    return appointments.new(date,)
  end
  
  def patients
    return appointments.map { |appointment| appointment.patient }
  end
end
