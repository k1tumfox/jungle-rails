class ProductsController < ApplicationController

  def index
    p ENV['STRIPE_PUBLISHABLE_KEY']
    p ENV['ADMIN_USER_NAME']
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
