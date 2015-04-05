class HomeController < ApplicationController
  def index
    redirect_to '/' unless authenticate
  end

  def login
  end

  def authenticate 
    if params[:password] == User.where(username: params[:username]).last.password
      true
    else
      flash[:error] = "WRONG USER"
      false
    end
  end
end
