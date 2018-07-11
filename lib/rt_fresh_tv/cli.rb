#CLI Controller
class RtFreshTv::CLI

	def call
		welcome
		RtFreshTv::Scraper.scrape_website
		list_shows
		menu
	end

	def welcome
		puts "****************************************"
		puts "* Welcome to Rotten Tomatoes' Fresh TV *"
		puts "****************************************"
		puts "Below, you will find current television shows that have been 'Certified Fresh' on Rotten Tomatoes, along with their Tomato-Meter scores."
	end
	
	def list_shows
		@shows = RtFreshTv::Show.all
		@shows.each.with_index(1) do |show, i|
			puts "#{i}- #{show.title}. #{show.rating} Fresh"
		end
	end

	def menu
		input = nil
		while input != "exit"
			puts "Please type the number of the show about which you would like more information. You can also type 'list' for the list of shows or 'exit'."
			input = gets.strip.downcase
			if input.to_i > 0 && input.to_i <= @shows.size
				show_info(input)
			elsif input == "list"
				list_shows
			elsif input == "exit"
				goodbye
			else
				input_error
			end
		end
	end

	def show_info(input)
		show = @shows[input.to_i - 1]
		RtFreshTv::Scraper.scrape_show_page(show) if !show.synopsis
		puts "Synopsis: #{show.synopsis} \n\n"
		puts "Critic Consensus: #{show.critic_consensus} \n\n"
		puts "For more reviews and information, visit #{show.url} \n\n"
	end

	def input_error
		puts "I did not understand your input. Please choose a show or type 'list' to see the shows"
	end

	def goodbye
		puts "Thank you for using Rotten Tomatoes' Fresh TV!"
	end

end
