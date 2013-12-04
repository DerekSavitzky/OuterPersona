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
  
  def guys_results
    @guys = Product.where(:category_id => 2)
  end
  
  def gals_results
    @gals = Product.where(:category_id => 3)
  end
  
  def search_results
    if params[:category].empty?
      @products = Product.where("name LIKE ? OR Description LIKE ?", "%#{params[:keywords]}%", "%#{params[:keywords]}%")
    else 
      @products = Product.where("category_id = ? AND name LIKE ?", "#{params[:category]}", "%#{params[:keywords]}%")
    end
  end
  
  def load_category #Load my categories for search dropdown
    @category = Category.all
  end
end
