class UsersController < ApplicationController
  before_action :set_user, except: %i[index new create]

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit; end

  def update; end

  def destroy
    @user.active = false
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params; end
end
