class ProductsController < ApplicationController
  
  def index
    
    @products = Product.all
    if params[:category]
     @products = Category.find_by(name: params[:category]).products
    end
    sort_attr = params[:sort]
    if sort_attr 
     @products = Product.all.order(sort_attr)
    end  
    if params[:discount]
      @products = Product.where("price < 60")
    end
  end

  def search
    search_term = params[:search]
  #ping database to find products that are similar to search term
    @products = Product.where("name LIKE ?", "%#{search_term}%")
    render :index
  end

  def new
  end
  
  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier]["supplier_id"]
      )
    @product.images.create(url: params[:image], product_id: @product.id)
    flash[:success] = "Product successfully created!"
    redirect_to "/products/#{@product.id}"
    #show page
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    if product_id == "random"
      @product = Product.all.sample
    end 
    @supplier = @product.supplier
    @images = @product.images
    
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      supplier_id: params[:supplier_id]
      )
    product.save
    flash[:success] = "Product successfully updated!"
    redirect_to "/products/#{@product.id}"
  end

 def destroy
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  @product.destroy
  flash[:warning] = "Product successfully deleted!"
  redirect_to "/products"
  end 
end  




