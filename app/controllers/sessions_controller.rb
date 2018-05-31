class SessionsController < ApplicationController
  
  def new
  end 

  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      session[:user] = @user.id
      redirect_to root_path
    else
      flash[:notice] = "Unable to log in. Please try again."
      render 'new'
    end 
  end 


  def destroy
    session[:user] = nil
    redirect_to root_path
  end 

end
