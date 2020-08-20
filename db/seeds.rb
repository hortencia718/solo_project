User.destroy_all
Joke.destroy_all

user1 = User.create(username: "bizzy")
user2 = User.create(username: "fizzy")
user3 = User.create(username: "gizzy")
user4 = User.create(username: "vizzy")

# here we are create a new user and save it to variable 
# (user1)

joke1 = Joke.create(content: " Why did the clock get kicked out of the library? because it tocked to much")

joke2 = Joke.create(content: " what button is impossible to unbutton? the belly button")

joke3 = Joke.create(content: " how do you get a squirrel to like you? act like a nut ")

joke4 = Joke.create(content: "what did the traffic light say to the car dont look i'm about to change")
# "dont look! 'i'm about to change"
# create a new "joke " and save its content ""
user_joke= UserJoke.create(user_id: user4.id, joke_id: joke4.id)
user_joke= UserJoke.create(user_id: user2.id, joke_id: joke2.id)
user_joke= UserJoke.create(user_id: user3.id, joke_id: joke3.id)
user_joke= UserJoke.create(user_id: user1.id, joke_id: joke1.id)




# user1.jokes << joke1
# here we are telling ruby  create a user joke w/user id 
# pointing to the "user that is save ti its variable here we say"
# that is "user1" could be someone else and go to thier id

# << will attempt to create and save a new instance using the join model...
# if the associations are set up correctly



# a user has many jokes , a joke belongs to many users? 