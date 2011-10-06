class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign Up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
      flash[:success] = "Welcome to my sample application. Have a nice day. AND DIE"
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
