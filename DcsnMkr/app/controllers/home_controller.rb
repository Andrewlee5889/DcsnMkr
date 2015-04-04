class HomeController < ApplicationController
  def index
  end

  def login
    User.find(params[:name])
    if User.password == params[:password]
      index
    else
      flash[:error] = "Wrong login"
    end
  end
end
