User.destroy_all
Joke.destroy_all

user1 = User.create(username: "mazzy")
user2 = User.create(username: "fuzzy")
user3 = User.create(username: "gizzy")

# here we are create a new user and save it to variable 
# (user1)

joke1 = Joke.create(content: " Tester joke")
joke2 = Joke.create(content: " Happy joke")
joke3 = Joke.create(content: " What goes up")
# create a new "joke " and save its content ""
user_joke= UserJoke.create(user_id: user3.id, joke_id: joke2.id)
user_joke= UserJoke.create(user_id: user2.id, joke_id: joke2.id)
user_joke= UserJoke.create(user_id: user3.id, joke_id: joke3.id)




# user1.jokes << joke1
# here we are telling ruby  create a user joke w/user id 
# pointing to the "user that is save ti its variable here we say"
# that is "user1" could be someone else and go to thier id

# << will attempt to create and save a new instance using the join model...
# if the associations are set up correctly



# a user has many jokes , a joke belongs to many users? 