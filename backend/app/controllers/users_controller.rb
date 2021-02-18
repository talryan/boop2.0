class UsersController < ApplicationController

  def index
      @users = User.all
      render json: @users
  end

  def create
      @user = User.new(user_params)
      if @user.save
          render :json => @user
      else
          render :json => { :errors => @user.errors }, status: 400
      end
  end

  private

  def user_params
      params.require(:user).permit(:name)
  end



end