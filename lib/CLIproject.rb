#environment file 
#in here loads all files needed to run our app 

require "CLIproject/version"
require "CLIproject/cli"
require "CLIproject/api"
require "CLIproject/art"

#dependencies 
require "pry"
require "httparty"


module CLIproject
  class Error < StandardError; end
  # Your code goes here...
end
