class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = @products.where(category: params[:category]) if params[:category].present?
    @products = @products.where(on_sale: true) if params[:filter] == 'on_sale'
    @products = @products.where(new: true) if params[:filter] == 'new'
    @products = @products.order(updated_at: :desc) if params[:filter] == 'recently_updated'
    @products = @products.where("name LIKE ?", "%#{params[:search]}%") if params[:search].present?
    @products = @products.page(params[:page]).per(10)
  end


  def show
   @product = Product.find(params[:id])
  end
end
