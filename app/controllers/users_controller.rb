class UsersController < ApplicationController
  def index
    if session[:type] == 'user'
      @user = User.find_by(id: session[:user_id])
      @teams = Team.all
      # @session = session[:user_id]
    end
  end

  def show
  end

  def new
    @user = User.new
    @teams = Team.all
  end

  def edit
  end

  def create
    @teams = Team.all
    @user = User.new(user_params)
    @user.password = params[:password_hash]
    @user.save!

    user = User.find_by(id: )
    redirect_to '/users'
  end

  def update
    @user.update(user_params)
    redirect_to '/users'
  end

  def destroy
    @user.destroy
    redirect_to '/users'
  end






  private

  def user_params
    params.require(:user).permit(:name, :email, :password_hash, :subtotal, :total, :team_id)
  end

end
