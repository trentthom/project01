class SessionController < ApplicationController
  def new
  end
  def create
    user = User.find_by :email => params[:email]  #find the user by their email address
    if user.present? && user.authenticate(params[:password])#check if user exists and that the  password matches
      session[:user_id] = user.id  #and we want to rember them when they move about the site
      redirect_to root_path            #redirect_to root_path
    else
      flash[:error] = "Invalid username or password"
      redirect_to login_path          #redirect_to login_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
