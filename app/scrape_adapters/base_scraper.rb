class BaseScraper
  def self.scrape_beer_list
    raise 'You should not use the base scraper, bad programmer!'
  end

  def self.get_agent
    a = Mechanize.new do |agent| 
      agent.user_agent_alias = 'Mac Safari'
    end
    a
  end

  def self.scrub(s)
    s = s.strip.gsub(/\s+/, ' ')
    s.size > 0 ? s : nil
  end
end
