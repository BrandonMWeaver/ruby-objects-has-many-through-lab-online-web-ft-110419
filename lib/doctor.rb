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
  
  def new_appointment(name, genre)
    return appointments.new(name, self, genre)
  end
  
  def genres
    return songs.map { |song| song.genre }
  end
end
