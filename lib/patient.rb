require 'pry'

class Patient
    attr_accessor :name, :appointment, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @appointment = appointment
        @doctor = doctor
        @@all << self
      end

    def self.all
      @@all
      end

    def appointments
        Appointment.all.select do |time|
            time.patient == self
        end
    end

    def doctors
        appointments.map do |time|
            time.doctor 
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
end
