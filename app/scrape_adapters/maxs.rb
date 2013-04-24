class Maxs < BaseScraper
  def self.scrape_beer_list(scraping_url)
    a = get_agent
    page = a.get(scraping_url)
    nodes = page / '#sidebar .p7TPcontent li'
    nodes.map { |node| scrub(node.content)}
  end
end
