class UsersController < ApplicationController
  #show all users
  #GET req to localhost:3000/users
  def index
    @user = User.all
  end
  #GET req to lh:3000/user/:id/
  #show the form to make a new user
  def edit
    @user = User.find(params[:id])
  end
  #handles form submission makes new user
  def new
    @user = User.new
  end
  #PUT req to lh:3/
  #shows user details page
  def create
    p params
    @user = User.create(user_params)
    redirect_to @user
  end
  #edit shows form for editing the user
  def show
    @user = User.find(params[:id])
    @action = 'Show'
  end
  #handles form submission for updating user
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end
  #destroys the user
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end



end
