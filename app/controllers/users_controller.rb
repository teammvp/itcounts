class UsersController < ApplicationController
  add_breadcrumb "Home", :root_path, :options => { :title => "Home" }

  # signup page
  def new
    add_breadcrumb "Sign Up", :signup_path, :options => { :title => "Sign Up" }
    if logged_in?
      redirect_to root_path
    else
      @user = User.new
    end
  end

  # submit via post to make a user
  def create

    @user = User.new(user_params)
    @user.save
    if @user.save
      redirect_to root_path, :notice => "Signed up!"
    else
      redirect_to signup_path
    end
  end

  # user profile page
  def show
    #@user = User.find_by(:username => params[:username])
    @user = User.find(session[:user_id])
    #binding.pry
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirm)
  end

  private :user_params
end
