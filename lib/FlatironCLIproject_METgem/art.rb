class CLIproject::Art
    attr_accessor :title, :primaryImage, :accessionYear, :department, :culture, :dimensions
    @@all = []

    def initialize(hash)
        #mass assignment. .send is running what is inside the block. ie. key = value. Here we are able to return a single object.
        hash.each {|key, value| self.send(("#{key}="), value)}
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    # custom instance methods of needed - this allows people to give a critique 
    def create_note(input)
        self.note = input
    end

end