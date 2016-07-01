class CreateAuctions < ActiveRecord::Migration
  def up
    create_table :auctions do |t|
      t.string "item_name", :null => false
      t.string "seller", :null => false
      t.date "end_date", :null => false
      t.string "status", :limit => 10, :null => false
      t.decimal "initial_bid", :precision => 10, :scale => 2, :null=>false
      t.timestamps 
    end
  end
  def down
  	drop_table :auctions
  end	
end
