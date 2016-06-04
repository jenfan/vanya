class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_breadcrumb 'Главная', :root_path
  before_action :load_category, except: [:about, :contacts]

  def main
  end

  def catalog
  end

  def category
    @products = @category.products
  end

  def product
    @product = Product.find(params[:id])
    add_breadcrumb @product.title, product_path(@category.url, @product.id) if @product
  end

  def about
    add_breadcrumb 'О компании', about_path
  end

  def contacts
    add_breadcrumb 'Контакты', contacts_path
  end

  def load_category
    @category = Category.find_by(url: params[:category_url])
    add_breadcrumb 'Каталог', catalog_path
    add_breadcrumb @category.name, category_path(@category.url) if @category
    add_breadcrumb @product.title, product_path(@product.id) if @product
  end
end
