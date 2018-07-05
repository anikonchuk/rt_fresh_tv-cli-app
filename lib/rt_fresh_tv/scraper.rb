class RtFreshTv::Scraper


	def scrape_website
		doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top-tv/"))
		shows = doc.css("div.media")
		shows.each do |div|
			show = RtFreshTv::Show.new
			show.title = div.css("a#tvPosterLink").text
			show.rating = div.css("span.tMeterScore").text
			show.critic_consensus = div.css("span.consensusText").text
			show.url = "https://www.rottentomatoes.com" + div.css("a#tvPosterLink").attr("href").text
			binding.pry
		end

	end


end
