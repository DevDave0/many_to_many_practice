# put your Trip model here

class Trip
    @@all = []

    def initialize(tourist, landmark)
        @tourist = tourist
        @landmark = landmark
        @@all << self
    end

    def self.all
        @@all
    end

    def tourist
        Trip.all.select{|trips|trips.tourist}
    end

    def landmark
        Trip.all.select{|trips|trips.landmark}
    end

end