class HomeController < ApplicationController

def index
  @users = User.all
  @user2 = User.find_by(params[:id]);
  if params[:upvote]
    @user = User.find(params[:upvote])
    @user.liked_by current_user
  end


end

def new

end

def create
  @users = User.all
  @user2 = User.find_by(params[:id]);
  #WEATHER - this makes the weather object and runs get humidity
    weather_object = Weather.new(params['zip'])
    @weather = weather_object.get_humidity()
    render :index
end

def show

end

end
