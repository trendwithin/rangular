class ProductsController < ApplicationController
  def index
    products = Product.all

    if price = params[:price]
      products = products.where(price: price)
    end
    render json: products, status: 200
  end

  def create
    product = Product.new(product_params)
    if product.save
      render json: product, status: 201, location: product
    else
      render json: product.errors, status: 422
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy!
    render nothing: true, status: 204
  end

  def update
    if product.update(product_params)
      render json: product, status 201, location: product
    else
      render json: product.errors, status: 422
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
