class PurchasesController < ApplicationController

  def index
    # link comes here
    # finds all variables from here down
    # takes those variables into the render page
    # where does it render?
    # if nothing is specified render 'index.html.erb' because that's the method name
    # otherwise tell it specifically where to render
    @user = User.find(params[:user_id])
    @purchases = @user.purchases
    @products = @purchases.map do |purchase|
                  purchase.products
                end.flatten
  end


  def new
    @product = Product.find(params[:id])
    @purchase = Purchase.new
  end

  def show
    @purchase = Purchase.find(params[:id])
  end



  #define a special method that will:
  # Create a new purchase for the user
  # Add the product that the user wants to purchase to that purchase array
  # use the new product that was added to update the quantity in the products table

  # add purchase to user (purchase)
   # code to add purchase to this user


    def create
    @purchase = Purchase.create(purchase_params)
    # render text: params.inspect
    @product = Product.find(params[:purchase][:product_id].to_i)
    @product.purchases << @purchase
    current_user.purchases << @purchase
    @new_qty = @product.qty - params[:purchase][:qty].to_i
    @product.update(qty: @new_qty)

    # product.qty -= params[:purchase][:qty].to_i
    @product.save

    # Send email to products users if quantity hits 0
    if @new_qty <= 0   # this will change to == 0 when limit is accounted for
      @prod_users = @product.purchases.map { |p| p.user }.flatten.uniq
      @prod_users.each do |user|
        UserMailer.welcome_email(user, @product).deliver
      end
    end
    redirect_to user_purchases_path(current_user)
  end

  private

  def purchase_params
    params.require(:purchase).permit(:qty)
  end





    # user has id as a parameter OR current_user
    #for that user we want to add a new purchase
    #on the model -> pass purchase parameters and product parameters

end
