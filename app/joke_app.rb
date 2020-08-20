class JokeApp
 
  # here will be your CLI!
  # it is not an AR class so you need to add attr
   attr_accessor :prompt
def initialize
    @prompt = TTY::Prompt.new
end

  def run
       welcome
     login_or_signup
    # wanna_see_favs?
    # get_joke(what_subject)
  end
  #  i want this method to welsome the user
  # private

    def welcome 
      puts "welome friends need a joke "
      sleep 1
      puts "knock knock you wanna hear a joke" 
      sleep 2
      # login_or_signup
    end

      def login_or_signup
   option = @prompt.select("Do wanna login?, do wanna signup for jokes?", %w(login signup))
   if option == "login" 
    puts "welcome"
   end
   
  end 


end
