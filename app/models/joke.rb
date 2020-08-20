class Joke < ActiveRecord::Base
    has_many :user_jokes
    has_many :jokes, through: :user_jokes
# add associatons!
end

def makeJoke_helper
    joke
end