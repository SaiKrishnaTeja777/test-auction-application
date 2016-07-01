class SetDefaultStatus < ActiveRecord::Migration
  def up
    change_column :auctions, :status, :string, :null => false, :default => "Open"
   end

  def down
  	change_column :auctions, :status, :string, :null => false
  end
end
