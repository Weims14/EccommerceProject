class ProductsController < ApplicationController
  def index
  @products = Product.order(:name)
  @categories = Category.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def search_results
    if params[:category_id].to_i == 0
      @products = Product.where("name LIKE '%#{params[:search_keywords]}%'")
    else
      @products = Product.where("name LIKE '%#{params[:search_keywords]}%' and category_id = #{params[:category_id]}")
    end
  @categories = Category.all
  end

  def sales_filter
    @products = Product.where("CAST(price AS STRING) LIKE '%45'")
    @categories = Category.all
  end

  def recent_filter
    @products = Product.where('created_at > :date', date: 4.days.ago)
    @categories = Category.all
  end

end
