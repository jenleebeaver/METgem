class CLIproject::Movie
    attr_accessor :title, :year, :release_year
    @@all = []

    # here we see a nested hash 
    ## set @@all = {
        #Frank: {
            #movies: []
        #}
    #}

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