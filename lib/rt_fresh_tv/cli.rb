#CLI Controller
class RtFreshTv::CLI

	def call
		welcome
		list_shows
		menu
	end

	def welcome
		puts "****************************************"
		puts "* Welcome to Rotten Tomatoes' Fresh TV *"
		puts "****************************************"
		puts "Below, you will find current television shows that have been 'Certified Fresh' on Rotten Tomatoes."
	end

	
	def list_shows
		puts "1. Vida: Season 1. 100% Fresh"
		puts "2. GLOW: Season 2. 98% Fresh"
		puts "3. The Handmaid's Tale: Season 2. 96% Fresh"
		puts "4. Pose: Season 1. 96% Fresh"
	end

	def menu
		input = nil
		while input != "exit"
			puts "Please type the number of the show you would like more information about. You can also type 'list' for the list of shows or 'exit'."
			input = gets.strip.downcase
			if input.to_i == 1
				puts "More information about show 1"
			elsif input == "list"
				list_shows
			elsif input == "exit"
				goodbye
			else
				puts "I did not understand your input. Please choose a show or type 'list' to see the shows"
			end
		end
	end

	def goodbye
		puts "Thank you for using Rotten Tomatoes' Fresh TV!"
	end

end
