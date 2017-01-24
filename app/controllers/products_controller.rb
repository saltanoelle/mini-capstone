class ProductsController < ApplicationController
  def index
    @all_products = Product.all
  render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end
  def create
    product = Product.create(name: params[:name],
      price: params[:price],
      image: pramas[:image],
      description: params[:description])
    render "create.html.erb"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.html.erb"
  end

  def edit
     product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "edit.html.erb"
end

  def update
    product_id = params[:id]
  @product = Product.find_by(id: product_id)
    product.title = params[:title]
    product.save
    render "update.html.erb"
  end
def destroy
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  recipe.destroy
  render "destroy.html.erb"
  end 
end

