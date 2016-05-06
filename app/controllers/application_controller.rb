class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def main
  end

  def catalog
  end

  def doma
  end

  def about
  end

  def contacts
  end

  def product
  end
end
