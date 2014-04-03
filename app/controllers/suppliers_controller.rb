class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
    @products = Product.where(:supplier_id => @supplier.id)
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)

      if @supplier.save
        redirect_to @supplier
      else
        render 'new'
      end
  end

  def edit
    @supplier = Supplier.find(params[:id])
      if current_user == @supplier
        render 'edit'
      else
        redirect_to root_path
      end
  end

  def update
    @supplier = Supplier.find(params[:id])
      if current_user == @supplier
        @supplier.update(supplier_params)
        redirect_to @supplier
      else
        redirect_to root_path
      end
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    redirect_to root_path
  end



  private
  def supplier_params
    params.require(:supplier).permit(:name, :email, :password, :password_confirmation)
  end

end
