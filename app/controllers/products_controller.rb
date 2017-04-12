class ProductsController < ApplicationController
    def index
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(set_params)
        @product.save
    end

    def set_params
        params.require(:product).permit(:name, info_products_attributes: [:id, :title, :description, :done, :_destroy])
    end
end
