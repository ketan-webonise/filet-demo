class ProductsController < ApplicationController
  def index
    @products=Product.all
    #@products.each do |p|
    #@product=p
    #  logger.info"##########################{@product.inspect}"
    #end
    respond_to do |format|
      format.html{}
      format.js{}
      format.json{ render :json =>  @products.as_json }
      logger.info"##################{@products.inspect}"

    end
  end
end