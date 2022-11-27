class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.page params[:page]
  end
end



