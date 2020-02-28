class CLIproject::CLI


    #start should greet user, maybe give desc
    #get data from scraper/api file
    #create new custom objs
    #all inside start method

    def start 
        puts "Hello there!"
        puts "Getting data from API... please wait"
        puts "Creating new objs"

        display_info
    end

     # deal with inputs (loop to keep asking to get new info)
    #EX. while input != "exit" do
    # display a list of something, or give examples of what we exoect as input 
    # get user input 
    # depending on what we get, do something
    # condition to check input for good value 
    # else tell them try again

    def display_info
        puts "please make selection:"
        input = gets.strip.downcase

        if input == "actors"
            puts "=======ACTORS LIST======="
            puts "List of Actors/Objs"
            #1. Tessa Thompson
            #2. Kumail Nanjiani
            display_info #this loops us back to the puts selection
        elsif input == "movies"
        puts "=======MOVIES LIST======="
            puts "List of Movies/Objs"
            display_info
        else
            puts "goodbye"
        end
    end

    #exit command
    # if input == "EXIT"
    # kill program, say good bye

    def quit 
        puts "Goodbye"
    end
    
end