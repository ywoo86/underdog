class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.admin == true
      session[:user_id] = user.id
      session[:type] = 'admin'
    elsif user && user.admin == false
      session[:user_id] = user.id
      session[:type] = 'user'
    end
    redirect_to '/matchups'
  end

  def destroy
    session[:user_id] = nil
    session[:type] = nil
    redirect_to '/matchups'
  end
end
