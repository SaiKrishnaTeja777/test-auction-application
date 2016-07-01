class LogonController < ApplicationController
def index
end	
def evaluate
 @user = LogonController.new
    @user = params[:user]
      if @user.blank?
        flash[:notice] = "Enter user name!!"
        redirect_to :controller => :logon, :action => :index
      else
        cookies[:username] = "#{params[:user]}"
        redirect_to :controller => :dashboard, :action => :index
    end
end
end