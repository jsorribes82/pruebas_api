class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users=User.all
    render json: @users
  end

  def create
    @user = User.create!(user_params)
    render json: @users, status: :created
  end

  def show
    render json: @user
  end

  def update
    @user.update(user_params)
    head :no_content
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    # whitelist params
    params.permit(:title, :plot)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
