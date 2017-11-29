class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @products = @review.product
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    if @review.save
      flash[:notice] = "review is successfully created!"
      redirect_to "/products/#{params[:product_id]}"
    else
      render :edit

    end
  end

  def edit
    @review = Review.find(params[:id])
    @products = @review.product
  end



  def update
    @review = Review.find(params[:id])
    @products = @review.product
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    if @review.save
      flash[:notice] = "review is successfully created!"
      redirect_to "/products/#{params[:product_id]}"
    else
      render :edit

    end

  end

  def destroy
    @review = Review.find(params[:id])
    @products = @review.product
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    if @review.save
      flash[:notice] = "review is successfully created!"
      redirect_to "/products/#{params[:product_id]}"
    else
      render :edit

    end

  end

end
