class StoreController < ApplicationController
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
    @products = Product.where(" name LIKE  ?", "%#{params[:keyword]}%")
  end
end
