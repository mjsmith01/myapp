class SimplePagesController < ApplicationController
  def landing_page
     @featured_product = Product.first
     @products = Product.all
  end

  def about
  end

  def contact
  end

  def thank_you
    byebug
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
