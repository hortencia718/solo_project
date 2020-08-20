class Joke < ActiveRecord::Base
    has_many :user_jokes
    has_many :jokes, through: :user_jokes
# add associatons!

 def initialize(user)
 end
# i want to tell a user a joke !

# user login to my jokes 
end