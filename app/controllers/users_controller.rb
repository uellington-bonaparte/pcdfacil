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
    @user.save
  end

  def edit; end

  def update
    # @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
    @user.active = false
    @user.save
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:users).permit(:name, :cpf, :rg, :address, :neighborhood,
                                  :city, :phone_number1, :phone_number2, :email,
                                  :password, :notes, :client, :admin, :active,
                                  :photo)
  end
end
