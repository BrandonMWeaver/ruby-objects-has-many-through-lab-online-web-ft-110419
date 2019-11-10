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
    return appointments.new(date, self, doctor)
  end
  
  def doctors
    return appointments.map { |appointment| appointment.doctor }
  end
end
