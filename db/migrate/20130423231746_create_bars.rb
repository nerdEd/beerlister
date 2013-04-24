class CreateBars < ActiveRecord::Migration
  def up
    create_table :bars do |t|
      t.string :name, null: false
      t.string :homepage_url
      t.string :scraping_url, null: false
      t.string :adapter

      t.timestamps
    end
  end

  def down
    drop_table :bars
  end
end
