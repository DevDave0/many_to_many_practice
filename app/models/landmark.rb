# put your Landmark model here
class Landmark
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name, @city = name , city
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_city(city_name)
        Landmark.all.select{|landmark|landmark.city == city_name}
    end

    def trips
        Trip.all.select{|trips|trips.landmark == self}
    end

    def tourists
        self.trips.map{|trips|trips.tourist}
    end


end