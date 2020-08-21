class UserJoke < ActiveRecord::Base
  belongs_to :user
  belongs_to :joke


#   def change
#     create_table :users do |t|
#       t.string :username
#       t.string :password
#   end
# end

  # belongs to is always single and will always 
  # gives you an instance of a user
  # add associatons!
end
# would like new users to create a username and a password on prompt