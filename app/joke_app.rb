class JokeApp
 system "clear"
  # here will be your CLI!
  # it is not an AR class so you need to add attr
   attr_accessor :prompt
def initialize
    @prompt = TTY::Prompt.new
end

 def run
       welcome
     login_or_signup
    #  wanna_see_the_joke_of_day?
    #  get_joke(what_subject)
 end


  def main_menu
    choice = @prompt.select("Do wanna see the joke of the day?", %w(yes no))
       if choice == "yes" 
        wanna_see_the_joke_of_day?
        sleep 1
        puts "Bye,see you tomorrow"
       else 
        puts "Sorry you are going to get a joke anyway!"
        sleep 2
        puts  Joke.all.sample.content
        sleep 1
        puts "BYE BYE"

       end
  end
  #  i want this method to welsome the user
  #  private

    def welcome 
      puts "Welome friends need a joke "
      sleep 2
      puts "knock knock you wanna hear a joke" 
      sleep 1
      # answer = gets.chomp
      # login_or_signup
    end

    def login_or_signup
      choice = @prompt.select("Do wanna login?, do wanna signup for jokes?", %w(login signup))
    #  if choice == "login" 
       puts "Welcome"
       sleep 1
       puts "What's your user name"
       answer = gets.chomp
       @user = User.find_or_create_by(username: answer)
       sleep 1
       puts "hello, #{@user.username}!"
       puts  Joke.all.sample.content
    #  else 
      # puts "Welcome"
      # sleep 1
      # puts "What's your user name"
      # answer = gets.chomp
      # @user = User.find_or_create_by(username: answer)
      # sleep 1
      #  puts "hello, #{@user.username}!"
      #  puts  Joke.all.sample.content
      # end
      main_menu
    end 
  
   def  wanna_see_the_joke_of_day?
    puts Joke.all.sample.content
  end


  # def  get_joke(what_subject)
  # end

end

# randomally select a joke and 


# pid =fork{exec 'afplay',"song.mp3" }