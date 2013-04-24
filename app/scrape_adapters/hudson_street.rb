class HudsonStreet < BaseScraper
  def self.scrape_beer_list(scraping_url)
    a = get_agent
    page = a.get(scraping_url)
    nodes = page / '#maincol p strong'
    nodes.map { |node| scrub(node.content) }.compact.uniq    
  end
end
