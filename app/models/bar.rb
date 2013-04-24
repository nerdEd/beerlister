class Bar < ActiveRecord::Base
  attr_accessible :name, :homepage_url, :adapter

  has_many :beers

  validates :name, :scraping_url, presence: true

  SCRAPING_ADAPTERS = ['Maxs', 'Mahaffeys', 'HudsonStreet']

  def self.scrape
    all.each do |bar|
      bar.scrape
    end
  end

  def scrape
    return unless adapter
    beers.destroy_all
    adapter.constantize.send(:scrape_beer_list).each do |beer_name|
      beers.create(name: beer_name)
    end
  end
end
