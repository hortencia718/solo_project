class User < ActiveRecord::Base
  has_many :user_jokes
  has_many :jokes,through: :user_jokes
  # belongs_to :age
  # add a ssociatons!

  # has-many array plural
  # belongs to instance, singular
  # both macors are class methods that give us instance methods
  # has_many works like attr_accessor/reader/writer
end