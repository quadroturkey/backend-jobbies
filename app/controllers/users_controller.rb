class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = user.find(params[:id])
    @user.update(user_params)
  end

  def destroy 
    @user = User.find_by[:id]
  end
 
  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
