class HomeController < ApplicationController
  def index
    redirect_to '/' unless authenticate
  end

  def login
  end

  def authenticate 
    if params[:email] == "ADL" && params[:password] == "ADL"
      true
    else
      false
    end
  end
end
