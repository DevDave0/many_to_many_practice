# put your Tourist model here

class Tourist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        Tourist.all.find{|tourist|tourist.name == name}
    end

    def trips
        Trip.all.select{|trip|trip.tourist == self}
    end

    def landmarks
        trips.map{|trip|trip.landmark}
    end

    def visit_landmark(landmark)
        Trip.new(landmark)
    end

    def never_visited
        Landmark.all.select{|landmarks|landmarks.tourist==!self}
    end


end