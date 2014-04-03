class SessionsController < ApplicationController

  def new
  end


  def create
    @supplier_array = Supplier.pluck(:email)
    @user_array = User.pluck(:email)

    if @supplier_array.include?(params[:email])
      @supplier = Supplier.find_by(email: params[:email])
      if @supplier.authenticate(params[:password])
        session[:supplier_id] = @supplier.id
        session[:user_id] = nil
        redirect_to supplier_path(@supplier)
      end
    elsif @user_array.include?(params[:email])
      @user = User.find_by(email: params[:email])
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        session[:supplier_id] = nil
        redirect_to user_path(@user)
      end
    else
      render 'new' #this is a path for sessions#new
    end
  end




#     if params[:email] is authenticated
#     if params[:email] is included in list of suppliers emails
#         start session for supplier
#     else
#         start session for user
#     end
# else
#     render login again and tell user email/pw combo invalid
# end



  def destroy
    if current_user.class == User
      session[:user_id] = nil
    elsif current_user.class == Supplier
      session[:session_id] = nil
    end
    redirect_to root_path
  end

end
