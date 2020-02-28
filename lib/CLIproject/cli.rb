class CLIproject::CLI

    def start 
        puts "Hello there!"
        puts "Getting data from API... please wait"
        puts "Creating new objs"
    end

    def display_info
        puts "please make selection:"
        input = gets.strip.downcase

        if input == "actors"
            puts "=======ACTORS LIST======="
            puts "List of Actors/Objs"
        elseif input == "movies"
        puts "=======MOVIES LIST======="
            puts "List of Movies/Objs"
        else
            puts "goodbye"
        end
    end

    #start should greet user, maybe give desc
    #get data from scraper/api file
    #create new custom objs
    #all inside start method

    # deal with inputs (loop to keep asking to get new info)
    #EX. while input != "exit" do
    # display a list of something, or give examples of what we exoect as input 
    # get user input 
    # depending on what we get, do something
    # condition to check input for good value 
    # else tell them try again

    #exit command
    # if input == "EXIT"
    # kill program, say good bye

    
end