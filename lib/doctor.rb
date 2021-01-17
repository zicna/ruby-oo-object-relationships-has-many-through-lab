require 'pry'
class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self )
    end

    def appointments
        Appointment.all.select do |app|
            #binding.pry
            app.doctor == self
        end
    end

    def patients    
        all_patients = []
        appointments.each do |app|
            all_patients << app.patient
        end
        all_patients
    end




end
