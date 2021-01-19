class TrainerLocation
    
    attr_reader :trainer, :location

    @@all = []

    def initialize(trainer, location)
        @trainer = trainer
        @location = location

        @@all.push(self)
    end

    def self.delete(t_l)
        @@all = self.all.select { |tl| tl != t_l }
    end

    def self.all
        @@all
    end
end