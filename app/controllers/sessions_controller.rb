class SessionsController < ApplicationController
  
  def login
  end

  def new
  end
  def create

    @user = User.where(email: params[:email]).first
    
    if @user 
      if @user.password == params[:password] 
        session[:user_id] = @user.id
        flash[:alert] = "Hello #{@user.fname}!"
        cookies[:test_cookie] = "goTrackingTech"
        redirect_to root_path
      else
        flash[:alert] = "Login Not Successful, Please Try Again"
        redirect_to login_path
      end
    else
      flash[:alert] = "Login Not Successful, Please Try Again"
      redirect_to login_path
    end
  end	

  def destroy
    session[:user_id] = nil
    flash[:alert] = "Successfully Logged Out"
    redirect_to root_path
  end

end