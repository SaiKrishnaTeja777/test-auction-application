class DashboardController < ApplicationController
  
  def index
    @bids =  Bid.includes(:auction).where(bids: { bidder: cookies[:username] })
    @sales = Auction.includes(:bids).where(auctions: {seller: cookies[:username]})
    @avail_bids = Bid.where(bids: {bidder: cookies[:username]})
    bidded_auctions = []
    bidded_auctions = Bid.where(bids: {bidder: cookies[:username]}).select("auction_id")
    @avail_auction = Auction.where.not(auctions: {seller: cookies[:username], id: bidded_auctions, status: "Closed"})
    @top_bid = Hash.new
    @avail_auction.each do |record|
      @top_bid[record.id] = Bid.where(bids: { auction_id: record.id}).maximum("bid")
      if (@top_bid[record.id].blank?)
        @top_bid[record.id] = "No Bids Yet"
      end    
    end
    @maxbid = Hash.new
    @bids.each do |record| 
      if record.bid == Bid.where(bids: { auction_id: record.auction.id}).maximum("bid") 
        @maxbid[record.auction.id] = "Yes"
      else 
        @maxbid[record.auction.id] = "No"
      end
    end
    @maxbids = Hash.new 
    @sales.each do |record|
      @maxbids[record.id] = Bid.where(bids: { auction_id: record.id}).order("bid DESC")
    end
    @highest_bidder = Hash.new
    @highest_bid = Hash.new
    @sales.each do |record|
      if( !@maxbids[record.id].blank? )
        @highest_bidder[record.id] = Bid.where(bids: { auction_id: record.id}).order("bid DESC").first.bidder 
        @highest_bid[record.id] = Bid.where(bids: { auction_id: record.id}).maximum("bid")
      end
    end

  end

  def show
  end

  def new
  end

  def edit
  end

  def close
  end
end
