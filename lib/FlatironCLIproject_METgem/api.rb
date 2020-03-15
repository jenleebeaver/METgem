
class CLIproject::API 

    def self.search_allArts(culture)
        @response_hash = HTTParty.get("https://collectionapi.metmuseum.org/public/collection/v1/search?artistOrCulture=true&q=#{culture}")

        if(@response_hash["Error"]) 
            puts "Oops something went wrong. Please reenter region."
        else
        
            ids = @response_hash["objectIDs"]#[0] #returning the first piece of art in our index 
             #{ |id, index| puts "#{index}. #{id}" }
        
            return ids.first(10)
        end
    end

    def self.search_art(id)
        @art_hash = HTTParty.get("https://collectionapi.metmuseum.org/public/collection/v1/objects/#{id}")
        
        if(@art_hash["Error"])           
            puts "Oops something went wrong. Please reenter number."
        else 
            art_obj = {
                title: @art_hash['title'],
                primaryImage: @art_hash['primaryImage'],
                accessionYear: @art_hash['accessionYear'],
                department: @art_hash['department'],
                culture: @art_hash['culture'],
                dimensions: @art_hash['dimensions']
            }
            
            return CLIproject::Art.new(art_obj)
        end
    end


end