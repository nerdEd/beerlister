class CreateBeers < ActiveRecord::Migration
  def up
    create_table :beers do |t|
      t.string :name, null: false
      t.references :bar, null: false
      t.timestamps
    end
  end

  def down
    drop_table :beers
  end
end
