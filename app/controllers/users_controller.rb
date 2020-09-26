class UsersController < ApplicationController
  def index
    users = User.all

    render json: users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'Unable to create new profile. Please try again.' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :current_address, :no_of_rooms, :house_SF)
  end
end
