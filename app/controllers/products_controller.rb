class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "You've successfully deleted a product!"
    redirect_to '/'
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "You've successfully created a new product. Kudos!"
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      flash[:notice] = "You've successfully updated an existing product. Kudos!"
      redirect_to '/'
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
