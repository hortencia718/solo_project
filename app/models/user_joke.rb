class UserJoke < ActiveRecord::Base
  belongs_to :user
  belongs_to :joke
  # add associatons!
end
