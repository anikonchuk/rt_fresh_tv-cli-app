#CLI Controller
class RtFreshTv::CLI

	def call
		welcome
		list_shows
	end

	def welcome
		puts "Welcome to Rotten Tomatoes' Fresh TV"
		puts "Below, you will find current television shows that have been 'Certified Fresh' on Rotten Tomatoes."
	end

	
	def list_shows
		puts "1. Vida: Season 1. 100% Fresh"
		puts "2. GLOW: Season 2. 98% Fresh"
		puts "3. The Handmaid's Tale: Season 2. 96% Fresh"
		puts "4. Pose: Season 1. 96% Fresh"
	end


end
