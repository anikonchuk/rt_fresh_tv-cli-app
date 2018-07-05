#CLI Controller
class RtFreshTv::CLI

	def call
		puts "Welcome to Rotten Tomatoes' Fresh TV!"
		list_shows
	end

	def list_shows
		puts "1. Vida: Season 1. 100%"
		puts "2. GLOW: Season 2. 98%"
		puts "3. The Handmaid's Tale: Season 2. 96%"
		puts "4. Pose: Season 1. 96%"
	end


end
