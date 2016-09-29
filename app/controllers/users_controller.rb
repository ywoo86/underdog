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
    # user = User.find_by_email(@user.email)
    # session[:user_id] = user.id
    # if user.admin == false
    #   session[:type] = 'user'
    # elsif user.admin == true
    #   session[:type] = 'admin'
    # end
    redirect_to '/matchups'
  end

  def update
    @user.update(user_params)
    redirect_to '/matchups'
  end

  def destroy
    @user.destroy
    redirect_to '/matchups'
  end






  private

  def user_params
    params.require(:user).permit(:name, :email, :password_hash, :subtotal, :total, :team_id)
  end

end
