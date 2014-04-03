class ProductsController < ApplicationController


  # This is where supplier form renders
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @product = Product.new
    @user = current_user
    # @purchase = Purchase.new
  end

  # This is where buy form renders
  def show
    @user = current_user
    @product = Product.find(params[:id])
    @purchase = Purchase.new
  end

  def create
    @supplier = Supplier.find(params[:supplier_id])
    @product = Product.new(product_params)
    @supplier.products << @product
      if @product.save
        redirect_to supplier_path(@supplier)
      else
        render 'new'
      end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @supplier = Supplier.find(current_user.id.to_i)
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to supplier_path(@supplier)
  end

  def destroy
    @supplier = Supplier.find(current_user.id.to_i)
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to supplier_path(@supplier)
  end


  private
  def product_params
    params.require(:product).permit(:name, :qty, :price, :img_url, :description)
  end

end
