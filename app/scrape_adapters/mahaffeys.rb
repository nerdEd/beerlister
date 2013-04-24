class Mahaffeys < BaseScraper
  def self.scrape_beer_list(scraping_url)
    a = get_agent
    page = a.get(scraping_url)
    lines = (page / 'body').to_s
    lines.split("\n").map do |line|
      m = line.match(/^<br>.+\(D\)\s(.+)$/)
      m && scrub(m[1].chomp)
    end.compact
  end
end
