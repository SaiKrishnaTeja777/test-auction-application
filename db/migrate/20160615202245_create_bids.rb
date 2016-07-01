class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :auction, :null=> false
      t.string "bidder", :null => false
      t.decimal "bid", :precision => 10, :scale => 2, :null=> false
      t.timestamps null: false
    end
  end
end
