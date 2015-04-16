class ProductsController < ApplicationController
  def index
  @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def search  
  
  end

  def search_results
    wildcard_keywards = '%' + params[:search_keywords] + '%'
    @products = Product.where("name LIKE ?", wildcard_keywards)
  end
end
