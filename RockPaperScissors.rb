class RockPaperScissors

	def intro
		puts "Welcome to Rock, Paper, Scissors!"
		sleep(0.5)
		puts "Please enter your name"
		@player_name = gets.chomp
		sleep(0.5)
		puts "Welcome #{@player_name}!"	
	end
	
	def	weapon_player
		sleep(1.0) 
		@weapon_player =	gets.chomp.downcase
		if !(@weapon_player == "rock" || @weapon_player == "paper" || @weapon_player == "scissors")
			puts "That's not rock, paper or scissors! Try again..."
			weapon_player	
		else
			puts "You have chosen #{@weapon_player}"
		end
	end

	def weapon_computer
		sleep(1)
		@weapon_computer = ["rock", "paper", "scissors"].sample(1).join(", ")
		puts "Computer has chosen #{@weapon_computer}"
	end

	def run_game
		sleep(1)
		if @weapon_player == @weapon_computer
			puts "It's a tie!"
		elsif @weapon_player == "rock" && @weapon_computer == "scissors"
			puts "Rock beats scissors - you won #{@player_name}!"
		elsif @weapon_player == "scissors" && @weapon_computer == "paper"
			puts "Scissors beats paper - you won #{@player_name}!"
		elsif @weapon_player == "paper" && @weapon_computer == "rock"
			puts "Paper beats rock - you won #{@player_name}!"
		else 
			puts "Unlucky #{@player_name}! You lost!"	
		end
	end

	def play_again?
		sleep(1)
		puts "Would you like to play again?"
		answer = gets.chomp.downcase
		if answer == "yes"
			start
		elsif answer == "no"
			puts "Thanks for playing #{@player_name}!"
		else
			puts "YES or NO?"
			play_again?
		end
	end
end

def start
	game = RockPaperScissors.new
		game.intro
		puts "Choose your weapon! Rock, paper or scissors?"
		game.weapon_player	
		game.weapon_computer
		game.run_game
		game.play_again?
end
start 
