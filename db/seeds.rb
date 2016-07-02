# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Auction.create(item_name: 'Book',seller: 'Kevin', end_date: '2016-12-12', status: 'Open', initial_bid: '40.50',created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Auction.create(item_name: 'Cycle',seller: 'Kevin', end_date: '2016-12-01', status: 'Open', initial_bid: '50.00',created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Auction.create(item_name: 'Pen',seller: 'Bob', end_date: '2016-08-20', status: 'Open', initial_bid: '10.00',created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Auction.create(item_name: 'Bag',seller: 'Mike', end_date: '2016-12-29', status: 'Open', initial_bid: '20.00',created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Auction.create(item_name: 'Bike',seller: 'Mike', end_date: '2017-01-12', status: 'Open', initial_bid: '5000.00',created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')

Bid.create(auction_id: '1',bidder: 'Bob', bid: '40.96', created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Bid.create(auction_id: '1',bidder: 'Mike', bid: '42.33', created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Bid.create(auction_id: '1',bidder: 'A1', bid: '43.14', created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Bid.create(auction_id: '2',bidder: 'Mike', bid: '51.00', created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Bid.create(auction_id: '2',bidder: 'Bob', bid: '51.50', created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Bid.create(auction_id: '4',bidder: 'A1', bid: '21.00', created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')
Bid.create(auction_id: '4',bidder: 'Kevin', bid: '21.50', created_at: '2016-06-15 22:04:29',updated_at: '2016-06-15 22:04:29')