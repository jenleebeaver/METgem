class CLIproject::CLI


    #start should greet user, maybe give desc
    #get data from scraper/api file
    #create new custom objs
    #all inside start method

    def start 
        puts "Hello there!"
        puts "----------------"
        puts "Please enter a movie title below:"
        input = gets.strip.downcase #with our input we have access to other objects
        #below creates our object and saves it for our stuff.rb 
        if(input != "quit")
            @data = CLIproject::API.get_movies(input) #puts "Getting data from API... please wait"
            @objects = CLIproject::Movie.all #puts "Creating new objs" 
            display_info
        else
            quit
        end
    end

     # deal with inputs (loop to keep asking to get new info)
    #EX. while input != "exit" do
    # display a list of something, or give examples of what we exoect as input 
    # get user input 
    # depending on what we get, do something
    # condition to check input for good value 
    # else tell them try again

    #What we want CLI to look at:
        #1. Batman
        #2. avengers
        # 2
        # subset of data about avengers 
        # or type menu to go back 

    def display_info
        puts "Here is your list:"
        puts "----------------"
        @objects.each.with_index(1) {|movie, index| puts "#{index}. #{movie.title}" }

        #we can build these inputs out 
        puts "please make a selection by index number"
        input = gets.strip.downcase #getting us a string number
        #@movie = @objects[input.to_i - 1]
        if(input.to_i > 0)
            @movie = @objects[input.to_i - 1]
            puts "#{@movie.year}"
            display_info
        elsif (input == "quit")
            quit 
        elsif (input == "menu")
            start
        else
            puts "Oops"
            display_info
        end

        #can also use a while loop 
            #while(input != "exit")
            #if(@movie)
                #puts "#{@movie.year}"
            #elsif (input == "quit")
                #quit 
            #else
                #puts "Oops"
                #display_info
            #end

        #@objects.each do |obj| #referring to objects in our stuff file 
            #puts "#{obj.name} - #{obj.age} "
        #end
        #input = gets.strip.downcase

        #if input == "1" #this grabs the first object
            #puts "=======ACTORS LIST======="
            #puts "List of Actors/Objs"
            #@obj = @objects[0]
            #puts "#{@obj.salary}, #{@obj.upcoming_film}"
            #1. Tessa Thompson
            #2. Kumail Nanjiani
            #display_info #this loops us back to the puts selection
        #elsif input == "movies"
        #puts "=======MOVIES LIST======="
            #puts "List of Movies/Objs"
            #display_info
        #else
            #quit
            #puts "goodbye"
        #end
    end

    #exit command
    # if input == "EXIT"
    # kill program, say good bye

    def quit 
        puts "Goodbye"
    end
    
end