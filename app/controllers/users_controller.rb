class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.firstName = params[:firstName]

    @user.lastName = params[:lastName]

    @user.username = params[:username]

    @user.password = params[:password]

    @user.email = params[:email]



    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])


    @user.firstName = params[:firstName]

    @user.lastName = params[:lastName]

    @user.username = params[:username]

    @user.password = params[:password]

    @user.email = params[:email]



    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy


    redirect_to "/users", :notice => "User deleted."

  end
end