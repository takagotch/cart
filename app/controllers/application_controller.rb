class ApplicationController < ActionController::Base
  protect_form_forgery

  private

    def current_cart
      Cart.find(session[:cart_id])
    resucue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end
end




