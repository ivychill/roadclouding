class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    respond_to do |format|
      format.html
      
      format.xml {
        render xml: @users
      }
 
      format.json {
        render json: @users 
      }
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = current_user
    respond_to do |format|
      format.html
      
      format.xml {
        render xml: @user
      }
 
      format.json {
        render json: @user
      }
    end
  end

end
