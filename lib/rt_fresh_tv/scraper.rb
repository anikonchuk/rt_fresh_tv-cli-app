class RtFreshTv::Scraper

	def scrape_website
		doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top-tv/"))
		shows = doc.css("div.col.col-center.col-full-xs div.panel-body.content_body").first.css("div.media")
		shows.each do |div|
			show = RtFreshTv::Show.new
			show.title = div.css("a#tvPosterLink").text
			show.rating = div.css("span.tMeterScore").text
			show.critic_consensus = div.css("span.consensusText").text
			show.url = "https://www.rottentomatoes.com" + div.css("a#tvPosterLink").attribute("href").value
		end
	end

	def scrape_show_page(show)
		show_page = Nokogiri::HTML(open(show.url))
		show.synopsis = show_page.css("div#movieSynopsis").text.strip
	end
	
end
