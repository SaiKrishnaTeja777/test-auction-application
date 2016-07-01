class FormsController < ApplicationController
	layout "add_auction"
	def add_auction
	@auction = Auction.new
	@auction.seller = cookies[:username]
	end

	def create
    	@auction = Auction.new(user_params)
	    respond_to do |format|
	      if @auction.save
	      	flash[:notice] ='Auction added successfully.'
	        format.html { redirect_to :action => :add_auction}
	       else
	        format.html { render :add_auction, notice: 'Auction not added successfully.' }
	      end
	    end
  	end

  	private
 	def user_params
      params.require(:auction).permit(:item_name, :seller, :initial_bid, :end_date)
    end
end

