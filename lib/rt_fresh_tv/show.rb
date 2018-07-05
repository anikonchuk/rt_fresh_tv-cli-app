class RtFreshTv::Show

	attr_accessor :name, :url, :rating, :synopsis, :critic_consensus

	@@all = []

	def initialize
		@@all << self
	end

	def self.all 
		@@all
	end

end
