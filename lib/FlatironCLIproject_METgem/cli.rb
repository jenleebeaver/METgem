class CLIproject::CLI

    def start 
        puts "Welcome!"
        puts "----------------"
        puts "Pick a country to view a selection of its art collection in the MET:"
        region = gets.strip.downcase 
        if(region != "quit")
            @data = CLIproject::API.search_allArts(region) 
            display_options
        else
            quit
        end
    end

    def display_options
        @data.each.with_index(1) { |id, index| puts "#{index}. #{id}" }
        display_info
    end

    def display_switch
        puts "Please select next step:"
        puts "1. Select new country"
        puts "2. Back to previous art collection "
        input = gets.strip.downcase
        if (input.to_i == 1) 
            start 
        elsif (input.to_i == 2)
            display_options
        else
            puts "Oops"
            quit
        end
    end


    def display_info

        puts "Please make a selection by number:"  
        puts "----------------"
        input = gets.strip.downcase
        
        if(input.to_i > 0)
            @artNo = @data[input.to_i - 1]
            @artPiece = CLIproject::API.search_art(@artNo)
            puts "Here is the info for your piece of art:" 
            puts "----------------"
            puts "Title: #{@artPiece.title}"
            puts "Link to Image: #{@artPiece.primaryImage}"
            puts "Year Acquired: #{@artPiece.accessionYear}"
            puts "Department: #{@artPiece.department}"
            puts "Culture: #{@artPiece.culture.nil? ? 'Not available' : @artPiece.culture}"
            puts "Dimensions: #{@artPiece.dimensions}"
            puts "--------------"
            display_switch
        elsif (input == "quit")
            quit
        elsif (input == "menu")
            start
        else
            puts "Oops"
            display_info
        end
    end


    def quit 
        puts "Goodbye"
    end
    
end