class RtFreshTv::Show

	attr_accessor :name, :URL, :rating, :synopsis, :critic_consensus

	@@all = []

	def initialize
		@@all << self
	end

	def self.all 
		@@all
	end
	
end
