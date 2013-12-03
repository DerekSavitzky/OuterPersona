class StoreController < ApplicationController
  before_filter :load_category
  
  def index
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end
  
  def search
    #no code is required here
  end #Automatically loads app/views/store/search.html.erb
  
  def search_results
    if params[:category].empty?
      @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
    else 
      @products = Product.where("category_id = ? AND name LIKE ?", "#{params[:category]}", "%#{params[:keywords]}%")
    end
  end
  
  def load_category #Load my categories for search dropdown
    @category = Category.all
  end
end
