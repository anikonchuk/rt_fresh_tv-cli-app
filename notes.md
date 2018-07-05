CLI-
- greets user
- lists shows
	uses Show.all. iterates through, lists show and tomato meter
- Asks the user what they want to do
	if they choose a show, give them synopsis and critical consensus
	give them the option to list the shows again
	give custom error message if something else
- Says goodbye


Show class-
- has an all class variable and a way to access it
	upon instantiation, adds show to the all variable
- has attributes for title, rating, URL (to access synopsis), synopsis, critical consensus

Scraper class-
- has a scrape_shows method to scrape the website and instantiate new shows
