require_relative '../config/environment'

app = JokeApp.new
app.run

# attr_reader :prompt
# attr_accessor :user, :joke,:userjoke

# def initialize
#     @prompt = TTY::Prompt.new
# end

# def welcome
#     puts  "Welcome to we got Jokes
#     \n
#     \n
#     "
#     prompt.select ("") do |menu|
#     end
# end 