class SessionsController < ApplicationController
  def new 
  end
  def create
    @user = User.find_by(email: params[:email])
    puts "Found user: #{@user.email}"
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to :controller => 'events', :action => 'index' 
    else
      redirect_to login_url, alert: "Invalid username or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :controller => 'events', :action => 'index' 
  end
end
