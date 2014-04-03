class UsersController < ApplicationController



  def index

  end


  def show
    @user = User.find(params[:id])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

      if @user.save
        @user.update(admin: false)
        redirect_to @user
      else
        render 'new'
      end
  end

  def edit
    @user = User.find(params[:id])
    if current_user == @user
      render 'edit'
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
      if current_user == @user
       if @user.update(user_params)
        redirect_to @user
        else
          render 'edit'
        end
      else
        redirect_to root_path
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def cart
    @user = User.find(params[:id])
  end

  def checkout
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end



end
