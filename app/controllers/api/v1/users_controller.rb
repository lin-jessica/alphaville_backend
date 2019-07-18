class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update destroy]

  def show
    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(username: params[:username], password: params[:password])
    # if @user.valid?
    #   @user.save
    #   render json: @user
    # else
    #   render json: { errors: 'Something went wrong' }
    # end
  end

  def edit
    render json: @user
  end

  def update
    # if @user.update(user_params)
    #   @user.update(user_params)
    #   redirect_to edit
    # else
    #   render json: { errors: 'Something went wrong' }
    # end
  end

  def delete
    @user.destroy
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
