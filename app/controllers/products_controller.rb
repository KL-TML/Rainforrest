class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @products = Product.find(params[:id])
    @review = Review.new
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.price = params[:product][:price]
    @product.discription = params[:product][:discription]
    @product.image = params[:product][:image]

    if @product.save
      redirect_to products_url
      flash[:success] = "Product created successfully!"
    else
      flash.now[:alert] = "Could not create product!"
      render :new
    end
    # @product = Product.create({
    #   name: params[:product][:name],
    #   price: params[:product][:price],
    #   discription: params[:product][:discription],
    # })


    # p "======="

    # @product.name = params[:]
     # @product= Product.all
     # @product.save
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.discription = params[:product][:discription]
    @product.price = params[:product][:price]
    @product.image = params[:product][:image]


    if @product.save
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path
    else
      render :show
    end
  end
end
