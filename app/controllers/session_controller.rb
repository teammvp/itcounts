class SessionController < ApplicationController
  add_breadcrumb "Home", :root_path, :options => { :title => "Home" }
  # login form
  def new
    add_breadcrumb "Login", :login_path, :options => { :title => "Login" }
  end

  def create

    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
