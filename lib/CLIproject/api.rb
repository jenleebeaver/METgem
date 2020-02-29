# find api 
# set url 
# build hashes out for objs
# call custom class .new method on stuff.rb
# send those back to our CLI 

#our cli and stuff.rb will be using this api.rb
#can use multiple API's
class CLIproject:: API 
    def self.get_movies(input)
        @movies_hash = HTTParty.get("https://omdbapi.com/?apikey=1df3fd7e&t=#{input}")
        #"https://omdbapi.com/?apikey=1df3fd7e&t=batman" <= initially we put this code to test the batman object
        #"https://omdbapi.com/?apikey=1df3fd7e&t=#{input}" <= Here we will be able to access all movie titles 
        if(@movies_hash["Error"]) #this catches a bad input or if the website goes down
            ##handles error
            puts "Oops can't find that movie"
        else
        movies_obj = {
            title: @movies_hash["Title"], #generally we access hashes using :
            year: @movies_hash["Year"],
            release_year: @movies_hash["Released"]
        }
        CLIproject::Movie.new(movies_obj)
        end
    end

end